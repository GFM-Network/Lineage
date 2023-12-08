uses SysUtils, TBuff, TTeleport, TPath, TTools;

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

// Return to Town
//procedure toTownzone;
//begin
//  TTeleport.FTownzone;
// Delay(500);
//  toBuff;
//end;

// Rebuff Noblesse Blessing
//procedure toRebuff;
//begin
//  IdBuff := 1323; // Check BUFF
//  toVillageIfDeath;
//  while not User.Buffs.ById(IdBuff, obj) do
//  begin
//    Print('Without Noblesse Blessing');
//    toVillageIfDeath;
//    Engine.Facecontrol(0, False);
//    TTeleport.toTownzone;
//  end;
//end;


//Teleport to spot based on level
procedure toSpot;
begin
  // Kill Gremlins to reach level 5
  if (User.Level < 5) then
  begin
    Engine.SetTarget(18342);           // TARGET GREMLIN
    Delay(1000);
    Engine.LoadConfig('Autolevel');    // CHARACTER NAME
    Print('DONE!');
    Engine.Facecontrol(0, True);
  end
  else
    //Engine.Facecontrol(0, False);
  begin
    // First spot level 5-20
    if ((User.Level >= 5) and (User.Level < 20)) then
    begin
      Engine.Facecontrol(0, False);
      Delay(15000);
      TTeleport.FFirst;
      Delay(5000);
      TPath.FFirst;
      Delay(5000);
      // Additional logic or actions if needed while waiting for level 20
    if (User.InCombat) then
    begin
      Print('Character is in combat, waiting...');
      // You can add more actions or conditions as needed
      Delay(15000); // Adjust delay as needed
    end;
    // Check user's level before ending the function
    if (User.Level >= 20) then
    begin
      Print('Reached level 20. Exiting the function.');
      // You can add any final actions before exiting the function
      Delay(15000)
    end;
    end
    // Teleport to second spot level 20-40
    else if ((User.Level >= 20) and (User.Level < 40)) then
    begin
      while (User.level < 40) do
      Engine.Facecontrol(0, False);
      Delay(15000);
      TTeleport.FSecond;
      Delay(5000);
      TPath.FSecond;
      Delay(5000);
      // Additional logic or actions if needed while waiting for level 40
    if (User.InCombat) then
    begin
      Print('Character is in combat, waiting...');
      // You can add more actions or conditions as needed
      Delay(5000); // Adjust delay as needed
    end;
    // Check user's level before ending the function
    if (User.Level >= 40) then
    begin
      Print('Reached level 40. Exiting the function.');
      // You can add any final actions before exiting the function
      Break; // Exit the while loop
      Delay(15000)
    end;
    end
    // Teleport to third spot level 40-55
    else if ((User.Level >= 40) and (User.Level < 55)) then
    begin
      Engine.Facecontrol(0, False);
      Delay(15000);
      TTeleport.FThird;
      Delay(5000);
      TPath.FThird;
      Delay(5000);
    end;
    // Add more spots as needed
  end;
end;


//-----------------------------------------------------------------------------
begin    //Loop Script
Print('Repeat Script');
  repeat
   toVillageIfDeath;
   toBuff;
  until Engine.Status = lsOffline;
  Delay(5000);
end.