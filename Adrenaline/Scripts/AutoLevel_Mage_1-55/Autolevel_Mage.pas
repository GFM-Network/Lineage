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

procedure toVillageIfDeath;                                               // Dead Character goes to village
begin
  TTools.FtoVillageIfDeath;
end;

procedure toBuff;                                                         // Macro Buff | Mage
begin
  IdBuff:= 1323 ;                                                         // Check BUFF
  toVillageIfDeath;
  while not User.Buffs.ById(IdBuff,obj) do begin
        Print('Sem Nobles');
        TBuff.FMage;
        Delay(500);
  end;
  toSpot;
end;

procedure toSpot;                                                         // Teleport to spot based on level
begin
  if (User.Level < 5) then                                                // Kill Gremlins to reach level 5
  begin
    Engine.LoadConfig('AutolevelMage');                                   // SETTINGS NAME
    while (User.Level < 5) do
    begin
      Engine.SetTarget('Gremlin');                                        // TARGET GREMLIN
      Delay(1000);
      Engine.Facecontrol(0, True);
      Delay(5000);
      Print('Leveling up...');

      if (User.Level >= 5) then                                           // Reached Level stop leveling up
      begin
        if (TTools.FHaveAgroMobs) then                                    // if agro mobs are hanging on us, then
        begin                                  
          Print('Fighting off mobs');
          Engine.FaceControl(0, true);                                    // turn on combaat in the interface 
          while (TTools.FHaveAgroMobs) do delay(555);                     // while there are agro mobs - wait for the bot to kill them
          Engine.FaceControl(0, false);                                   // turn off combat in the interface
          while (User.InCombat) do delay(555);                            // waiting for the exit from the combat
        end;
        Print('Reached level 5. Exiting the function.');
        Engine.FaceControl(0, false);
        while (User.InCombat) do delay (555);
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
      Engine.LoadConfig('AutolevelMage');                               // Load Adrenaline Settings and start
      Engine.ClearZone;                                                 // Clear previously loaded zmap
      Engine.LoadZone('lv5to20');                                       // Load Adrenaline map zone
      Print('Zone Loaded');
      while (User.Level < 20) do
      begin
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then                                             // Goes to village if character is dead
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;  
      end;

      if (User.Level >= 20) then                                          // Reached Level stop leveling up
      begin
        if (TTools.FHaveAgroMobs) then                                    // if agro mobs are hanging on us, then
        begin                                  
          Print('Fighting off mobs');
          Engine.FaceControl(0, true);                                    // turn on combaat in the interface 
          while (TTools.FHaveAgroMobs) do delay(555);                     // while there are agro mobs - wait for the bot to kill them
          Engine.FaceControl(0, false);                                   // turn off combat in the interface
          while (User.InCombat) do delay(555);                            // waiting for the exit from the combat
        end;
        Print('Reached level 20. Exiting the function.');
        Engine.FaceControl(0, false);
        while (User.InCombat) do delay (555);
      end;
    end;
  end;

  // Second spot level 20-40
  if ((User.Level >= 20) and (User.Level < 40)) then
  begin
    while (User.Level < 40) do
    begin
      TTeleport.FAntNest;
      Delay(5000);
      TPath.FAntNest;
      Delay(5000);
      Engine.ClearZone;                                                 // Clear previously loaded zmap
      Engine.LoadZone('lv20to40');                                      // Load Adrenaline map zone
      Print('Zone Loaded');
      while (User.Level < 40) do
      begin
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then                                             // Goes to village if character is dead
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;
      end;

      if (User.Level >= 40) then                                          //Reached Level stop leveling up
      begin
        if (TTools.FHaveAgroMobs) then                                    // if agro mobs are hanging on us, then
        begin                                  
          Print('Fighting off mobs');
          Engine.FaceControl(0, true);                                    // turn on combaat in the interface 
          while (TTools.FHaveAgroMobs) do delay(555);                     // while there are agro mobs - wait for the bot to kill them
          Engine.FaceControl(0, false);                                   // turn off combat in the interface
          while (User.InCombat) do delay(555);                            // waiting for the exit from the combat
        end;
        Print('Reached level 40. Exiting the function.');
        Engine.FaceControl(0, false);
        while (User.InCombat) do delay (555);
      end;
    end;
  end;

  // Third spot level 40-55
  if ((User.Level >= 40) and (User.Level < 55)) then                        
  begin
    while (User.Level < 55) do
    begin
      TTeleport.FFieldsofMassacre;
      Delay(5000);
      TPath.FFieldsofMassacre;
      Delay(5000);
      Engine.ClearZone;                                                 // Clear previously loaded zmap
      Engine.LoadZone('lv40to55');                                      // Load Adrenaline map zone
      Print('Zone Loaded');
      while (User.Level < 55) do
      begin
        Engine.Facecontrol(0, True);
        Delay(5000);
        Print('Leveling up...');
        if (User.HP = 0) then                                             // Goes to village if character is dead
        begin
        TTools.FtoVillageIfDeath;
        Delay(15000);
        toBuff;
        end;
      end;

      if (User.Level >= 55) then                                          //Reached Level stop leveling up
      begin
        if (TTools.FHaveAgroMobs) then                                    // if agro mobs are hanging on us, then
        begin                                  
          Print('Fighting off mobs');
          Engine.FaceControl(0, true);                                    // turn on combaat in the interface 
          while (TTools.FHaveAgroMobs) do delay(555);                     // while there are agro mobs - wait for the bot to kill them
          Engine.FaceControl(0, false);                                   // turn off combat in the interface
          while (User.InCombat) do delay(555);                            // waiting for the exit from the combat
        end;
        Print('Reached level 55. Exiting the function.');
        Engine.FaceControl(0, false);
        while (User.InCombat) do delay (555);
      end;
    end;
  end;
end;

//-----------------------------------------------------------------------------
begin                                                                     //Loop Script
  Print('Repeat Script');
  repeat
    toVillageIfDeath;
    toBuff;
    if (User.Level >= 55) or (Engine.Status = lsOffline) then             // Check if the character has reached level 55 or the engine is offline
    begin
      Engine.Unstuck;                                                     // Teleport to a safe zone before stopping the script
      Print('Returning to town');
      Delay(22000);
    end;
  until (User.Level >= 55) or (Engine.Status = lsOffline);
    Engine.FaceControl(0, false);
    Print('Finished AutolevelMage!');
    Delay(500);
end.