unit TTeleport;

interface

implementation

var Figth_Flag:boolean;
     Item: TL2Item;
     Npc: TL2Npc;
     Obj: TL2Buff;
     IdBuff: integer;
     Buffs:TL2Buff;
var L2Skill: TL2Skill;



// Townzone Dark Elf
procedure FTownzone;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_10_1');
  Print('Teleporting To Townzone');
  Delay(5000);
end;

// Teleport to first spot level 5-20 | Talking Island Obelisk of Victory
procedure FFirst;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_40_1');
  Delay(5000);
  Engine.SetTarget('Milia');  //Target Gatekeeper
  Delay(1000);
  Engine.DlgOpen; //Open chat
  Delay(1000);
  Engine.DlgSel(03);
  Delay(1000);
  Engine.DlgSel(09);
  Print('Teleporting to First Spot');
  Delay(5000);
end;

// Teleport to second spot level 20-40 | Outside Cruma Tower
procedure FSecond;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  Delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-14');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_19_1');
  Print('Teleporting to Second Spot');
  Delay(5000);
end;

// Teleport to third spot level 40-55 | Cemetery
procedure FThird;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-20');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_18_14');
  Print('Teleporting to Third Spot');
  Delay(5000);
end;

end.
