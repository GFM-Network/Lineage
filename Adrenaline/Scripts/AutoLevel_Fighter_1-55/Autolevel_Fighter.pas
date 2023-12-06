uses SysUtils,TBuff,TTeleport,TPath;

var Figth_Flag:boolean;
     Item: TL2Item;
     Npc: TL2Npc;
     Obj: TL2Buff;
     IdBuff: integer;
     Buffs:TL2Buff;
var L2Skill: TL2Skill;

//Dead Character goes to village
procedure toVillageIfDeath;
begin
  TTools.FtoVillageIfDeath;
end;

//Macro Buff | Fighter
procedure toBuff;
begin
   TBuff.FFighter;
   delay(500);
   toSpot;
end;

//Return to Town
procedure toTownzone;
begin
    TTeleport.FTownzone;
    delay(500);
    toBuff;
end;

//Rebuff Noblesse Blessing
procedure toRebuff;
begin
  IdBuff:= 1323 ; //Check BUFF
  toVillageIfDeath;
while not User.Buffs.ById(IdBuff,obj) do begin
        Print('Without Noblesse Blessing');
        toVillageIfDeath;
        Engine.Facecontrol(0,False);
        toTownzone;
   end;
end;

//Teleport to spot based on level
procedure toSpot;
begin

//Kill Gremlins to reach lv 5
if (User.Level>5) then begin
begin
    Engine.SetTarget (Gremlin);
    Delay (1000)
    Engine.LoadConfig('AutoLevel.xml');    //CHARACTER NAME
    Engine.LoadZone('');   //ZMAP NAME
    Print('DONE!');
    toVillage;
    Engine.Facecontrol(0,True);
end;

//First spot lv 5-20
if ((User.Level>4) and (User.Level<20)) then begin
begin
    TTeleport.FFirst;
    delay(500);
    TPath.FFirst;
end;

//Teleport to second spot lv 20-40
if ((User.Level>19) and (User.Level<40)) then begin
begin
    TTeleport.FSecond;
    delay(500);
    TPath.FSecond;
end;

//Teleport to third spot lv 40-55
if ((User.Level>39) and (User.Level<55)) then begin
procedure TeleportThirdSpot;
begin
    TTeleport.FThird;
    delay(500);
    TPath.FThird;
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