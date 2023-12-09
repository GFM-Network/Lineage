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

// Macro Buff | Fighter
procedure toBuff;
begin
  TBuff.FFighter;
  Delay(500);
  toSpot;
end;

// Teleport to spot based on level
procedure toSpot;
begin
  // Kill Gremlins to reach level 5
  if (User.Level < 5) then
  begin
    while (User.Level < 5) do
    begin
      Engine.SetTarget('Gremlin');         // TARGET GREMLIN
      Delay(1000);
      Engine.LoadConfig('Autolevel');      //SETTINGS NAME
      Engine.Facecontrol(0, True);
      Delay(5000);
      Print('Leveling up...');

      if (User.Level >= 5) then
      begin
        Print('Reached level 5. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(15000);
      end;

      if (User.InCombat) then
      begin
        Print('Character is in combat, waiting...');
        // You can add more actions or conditions as needed
        if (user.target.dead) then
        begin
          while user.incombat do
            delay(1000);
          engine.autosoulshot(5789, true);
          engine.autotarget(2500);
          engine.attack;
          engine.pickup;
        end;
      end;

      // Once the loop exits, it means User.Level is now 5 or higher
      Engine.Facecontrol(0, False); // Stop attack
    end;
  end;

  // First spot level 5-20
  if ((User.Level >= 5) and (User.Level < 20)) then
  begin
    while (User.Level < 20) do
    begin
      TTeleport.FFirst;
      Delay(5000);
      TPath.FFirst;
      Delay(5000);
      while (User.Level < 20) do
      begin
        Engine.LoadConfig('Autolevel');  // SETTINGS NAME
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
      end;

      if (User.Level >= 20) then
      begin
        Print('Reached level 20. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(15000);
      end;

      if (User.InCombat) then
      begin
        Print('Character is in combat, waiting...');
        // You can add more actions or conditions as needed
        if (user.target.dead) then
        begin
          while user.incombat do
            delay(1000);
          engine.autosoulshot(5789, true);
          engine.autotarget(2500);
          engine.attack;
          engine.pickup;
        end;
      end;

      // Once the loop exits, it means User.Level is now 20 or higher
      Engine.Facecontrol(0, False); // Stop attack
    end;
  end;

  // First spot level 20-40
  if ((User.Level >= 20) and (User.Level < 40)) then
  begin
    while (User.Level < 40) do
    begin
      TTeleport.FSecond;
      Delay(5000);
      TPath.FSecond;
      Delay(5000);
      while (User.Level < 40) do
      begin
        Engine.LoadConfig('Autolevel');  // SETTINGS NAME
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
      end;

      if (User.Level >= 40) then
      begin
        Print('Reached level 40. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(15000);
      end;

      if (User.InCombat) then
      begin
        Print('Character is in combat, waiting...');
        // You can add more actions or conditions as needed
        if (user.target.dead) then
        begin
          while user.incombat do
            delay(1000);
          engine.autosoulshot(5789, true);
          engine.autotarget(2500);
          engine.attack;
          engine.pickup;
        end;
      end;

      // Once the loop exits, it means User.Level is now 20 or higher
      Engine.Facecontrol(0, False); // Stop attack
    end;
  end;

  // First spot level 40-55
  if ((User.Level >= 40) and (User.Level < 55)) then
  begin
    while (User.Level < 55) do
    begin
      TTeleport.FThird;
      Delay(5000);
      TPath.FThird;
      Delay(5000);
      while (User.Level < 55) do
      begin
        Engine.LoadConfig('Autolevel');  // SETTINGS NAME
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
      end;

      if (User.Level >= 55) then
      begin
        Print('Reached level 55. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(15000);
      end;

      if (User.InCombat) then
      begin
        Print('Character is in combat, waiting...');
        // You can add more actions or conditions as needed
        if (user.target.dead) then
        begin
          while user.incombat do
            delay(1000);
          engine.autosoulshot(5789, true);
          engine.autotarget(2500);
          engine.attack;
          engine.pickup;
        end;
      end;

      // Once the loop exits, it means User.Level is now 20 or higher
      Engine.Facecontrol(0, False); // Stop attack
    end;
  end;
end;

//-----------------------------------------------------------------------------
begin    //Loop Script
  Print('Repeat Script');
  repeat
    toVillageIfDeath;
    toBuff;
  until (User.Level >= 55) or (Engine.Status = lsOffline);
  Delay(5000);
end.