uses
  SysUtils, TBuff, TTeleport, TPath, TTools;

var
  Figth_Flag: boolean;
  Item: TL2Item;
  Npc: TL2Npc;
  Obj: TL2Buff;
  IdBuff: integer;
  Buffs: TL2Buff;
var
  L2Skill: TL2Skill;

// Dead Character goes to village
procedure toVillageIfDeath;
begin
  TTools.FtoVillageIfDeath;
end;

// Macro Buff | Mage
procedure toBuff;
begin
  TBuff.FMage;
  Delay(500);
  toSpot;
end;

//Teleport to spot based on level
procedure toSpot;
begin
  // Kill Gremlins to reach level 5
  while (User.Level < 5) do
  begin
    Engine.SetTarget(18342);           // TARGET GREMLIN
    Delay(1000);
    Engine.LoadConfig('Autolevel');    // CHARACTER NAME
    Print('Leveling up...');
    Engine.Facecontrol(0, True);

    // Additional logic or actions if needed while waiting for level 5
    if (User.InCombat) then
    begin
      Print('Character is in combat, waiting...');
      // You can add more actions or conditions as needed
      Delay(5000); // Adjust delay as needed
    end;
  end;

  // Once the loop exits, it means User.Level is now 5 or higher
  Engine.Facecontrol(0, False); // Stop attack

  // First spot level 5-20
  while (User.Level < 20) do
  begin
    TTeleport.FFirst;
    Delay(5000);
    TPath.FFirst;
    Delay(5000);

    // Additional logic or actions if needed while waiting for level 20
    if (User.InCombat) then
    begin
      Print('Character is in combat, waiting...');
      // You can add more actions or conditions as needed
      Delay(5000); // Adjust delay as needed
    end;
  end;

  // Once the loop exits, it means User.Level is now 20 or higher
  Engine.Facecontrol(0, False); // Stop attack

  // Continue with similar logic for other level ranges...

end;

//-----------------------------------------------------------------------------
begin // Loop Script
  Print('Repeat Script');
  repeat
    toVillageIfDeath;
    toBuff;
  until Engine.Status = lsOffline;
  Delay(5000);
end.
