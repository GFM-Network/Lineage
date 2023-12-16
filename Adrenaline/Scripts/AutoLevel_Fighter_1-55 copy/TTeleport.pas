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
procedure FHumanVilage;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_40_1');
  Delay(5000);
  Engine.MoveTo(-83112, 244472, -3728);
  Engine.SetTarget('Milia');  //Target Gatekeeper
  Print('Heading to the Gatekeeper');
  Delay(500);
  Engine.DlgOpen; //Open chat
  Delay(500);
  Print('Selecting the spot');
  Engine.DlgSel(03);
  Delay(500);
  Engine.DlgSel(09);
  Print('Teleporting to First Spot');
  Delay(5000);
end;

// Teleport to second spot level 20-40 | Brekas Orc
procedure FAntNest;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  Delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-16');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_20_1');
  Delay(500);
  Print('Teleporting to Second Spot');
  Delay(5000);
end;

// Teleport to third spot level 40-55 | Fields of Massacre
procedure FFieldsofMassacre;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  Delay(500);
  Engine.BypassToServer('_bbspage:teleport/main-20');
  Delay(500);
  Engine.BypassToServer('_cbbsteleport_18_9');
  Delay(500);
  Print('Teleporting to Third Spot');
  Delay(5000);
end;

end.
