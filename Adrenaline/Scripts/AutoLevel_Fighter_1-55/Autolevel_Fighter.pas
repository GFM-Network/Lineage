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
      Engine.LoadConfig('AutolevelFighter');      //SETTINGS NAME
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
        Engine.LoadConfig('AutolevelFighter');  // SETTINGS NAME
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;  
      end;

      if (User.Level >= 20) then
      begin
        Print('Reached level 20. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(1000);
        Engine.Unstuck;
        Print('Returning to town');
        Delay(22000);
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
        Engine.LoadConfig('AutolevelFighter');  // SETTINGS NAME
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;
      end;

      if (User.Level >= 40) then
      begin
        Print('Reached level 40. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(1000);
        Engine.Unstuck;
        Print('Returning to town');
        Delay(22000);
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
        Engine.LoadConfig('AutolevelFighter');  // SETTINGS NAME
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;
      end;

      if (User.Level >= 55) then
      begin
        Print('Reached level 55. Exiting the function.');
        // You can add any final actions before exiting the function
        Engine.Facecontrol(0, False);
        Delay(1000);
        Engine.Unstuck;
        Print('Returning to town');
        Delay(22000);
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
  // Check if the character has reached level 55 or the engine is offline
    if (User.Level >= 55) or (Engine.Status = lsOffline) then
    begin
      // Teleport to a safe zone before stopping the script
      TTeleport.FTownzone;
      Delay(5000);
    end;
  until (User.Level >= 55) or (Engine.Status = lsOffline);
    Print('Finished AutolevelFighter!');    
  // Delay after the loop (optional)
  Delay(5000);
end.