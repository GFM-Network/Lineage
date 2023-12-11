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
  IdBuff:= 1323 ; //Check BUFF
  toVillageIfDeath;
  while not User.Buffs.ById(IdBuff,obj) do begin
        Print('Sem Nobles');
        TBuff.FMage;
        Delay(500);
  end;
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
      Engine.LoadConfig('AutolevelMage');      //SETTINGS NAME
      Engine.Facecontrol(0, True);
      Delay(5000);
      Print('Leveling up...');

      if (User.Level >= 5) then   //Reached Level stop leveling up
      begin
        Print('Reached level 5. Exiting the function.');
        Engine.Facecontrol(0, False);
        Delay(15000);
      end;
    end;
  end;

  // First spot level 5-20
  if ((User.Level >= 5) and (User.Level < 20)) then
  begin
    while (User.Level < 20) do
    begin
      TTeleport.FHumanVilage;
      Delay(5000);
      TPath.FHumanVilage;
      Delay(5000);
      while (User.Level < 20) do
      begin
        Engine.LoadConfig('AutolevelMage');  // Load Adrenaline Settings and start
        Engine.LoadZone('Lv5-20.zmap');    // Load Adrenaline map zone
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then   // Goes to village if character is dead
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;  
      end;

      if (User.Level >= 20) then    //Reached Level stop leveling up
      begin
        Print('Reached level 20. Exiting the function.');
        Engine.Facecontrol(0, False);
        Delay(1000);
        Engine.Unstuck;
        Print('Returning to town');
        Delay(22000);
      end;
    end;
  end;

  // First spot level 20-40
  if ((User.Level >= 20) and (User.Level < 40)) then
  begin
    while (User.Level < 40) do
    begin
      TTeleport.FAntNest;
      Delay(5000);
      TPath.FAntNest;
      Delay(5000);
      while (User.Level < 40) do
      begin
        Engine.LoadConfig('AutolevelMage');  // Load Adrenaline Settings and start
        Engine.LoadZone('Lv20-40.zmap');    // Load Adrenaline map zone
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then   // Goes to village if character is dead
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;
      end;

      if (User.Level >= 40) then    //Reached Level stop leveling up
      begin
        Print('Reached level 40. Exiting the function.');
        Engine.Facecontrol(0, False);
        Delay(1000);
        Engine.Unstuck;
        Print('Returning to town');
        Delay(22000);
      end;
    end;
  end;

  // First spot level 40-55
  if ((User.Level >= 40) and (User.Level < 55)) then
  begin
    while (User.Level < 55) do
    begin
      TTeleport.FFieldsofMassacre;
      Delay(5000);
      TPath.FFieldsofMassacre;
      Delay(5000);
      while (User.Level < 55) do
      begin
        Engine.LoadConfig('AutolevelMage');   // Load Adrenaline Settings and start
        Engine.LoadZone('Lv40-55.zmap');    // Load Adrenaline map zone
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then   // Goes to village if character is dead
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;
      end;

      if (User.Level >= 55) then    //Reached Level stop leveling up
      begin
        Print('Reached level 55. Exiting the function.');
        Engine.Facecontrol(0, False);
        Delay(1000);
        Engine.Unstuck;
        Print('Returning to town');
        Delay(22000);
      end;
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
      Engine.Unstuck;
      Print('Returning to town');
      Delay(22000);
    end;
  until (User.Level >= 55) or (Engine.Status = lsOffline);
    Print('Finished AutolevelMage!');
    Delay(500);
end.