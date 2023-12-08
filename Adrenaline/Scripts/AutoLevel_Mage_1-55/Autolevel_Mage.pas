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

// Macro Buff | Fighter
procedure toBuff;
begin
  TBuff.FMage;
  Delay(500);
  toSpot;
end;

// Return to Town
procedure toTownzone;
begin
  TTeleport.FTownzone;
  Delay(500);
  toBuff;
end;

// Rebuff Noblesse Blessing
procedure toRebuff;
begin
  IdBuff := 1323; // Check BUFF
  toVillageIfDeath;
  while not User.Buffs.ById(IdBuff, obj) do
  begin
    Print('Without Noblesse Blessing');
    toVillageIfDeath;
    Engine.Facecontrol(0, False);
    toTownzone;
  end;
end;


//Teleport to spot based on level
procedure toSpot;
begin
  // Kill Gremlins to reach level 5
  if (User.Level < 5) then
  begin
    Engine.SetTarget(Gremlin);
    Delay(1000);
    Engine.LoadConfig('Autolevel');    // CHARACTER NAME
    Print('DONE!');
    TTeleport.FTownzone;
    Engine.Facecontrol(0, True);
  end
  else
  begin
    // First spot level 5-20
    if ((User.Level >= 5) and (User.Level < 20)) then
    begin
      TTeleport.FFirst;
      Delay(500);
      TPath.FFirst;

      // Check combat status and take actions if needed
      if (User.Target.Dead) then
      begin
        while User.InCombat do
          Delay(1000);

        // Additional checks or actions if needed
        Engine.AutoTarget(2500);
        Engine.Attack;
        Engine.Pickup;
      end;
    end
    // Teleport to second spot level 20-40
    else if ((User.Level >= 20) and (User.Level < 40)) then
    begin
      TTeleport.FSecond;
      Delay(500);
      TPath.FSecond;

      // Check combat status and take actions if needed
      if (User.Target.Dead) then
      begin
        while User.InCombat do
          Delay(1000);

        // Additional checks or actions if needed
        Engine.AutoTarget(2500);
        Engine.Attack;
        Engine.Pickup;
      end;
    end
    // Teleport to third spot level 40-55
    else if ((User.Level >= 40) and (User.Level < 55)) then
    begin
      TTeleport.FThird;
      Delay(500);
      TPath.FThird;

      // Check combat status and take actions if needed
      if (User.Target.Dead) then
      begin
        while User.InCombat do
          Delay(1000);

        // Additional checks or actions if needed
        Engine.AutoTarget(2500);
        Engine.Attack;
        Engine.Pickup;
      end;
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