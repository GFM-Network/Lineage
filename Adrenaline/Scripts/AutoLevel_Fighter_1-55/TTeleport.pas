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
  Engine.BypassToServer('_bbsgetfav');
  Delay(500);
  Engine.BypassToServer('_bbsgatekeeper');
  Delay(500);
  Engine.BypassToServer('12');
  Print('Teleporting To Townzone');
  Delay(5000);
end;

// Teleport to first spot level 5-20 | Talking Island Obelisk of Victory
procedure FFirst;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsgetfav');
  Delay(500);
  Engine.BypassToServer('_bbsgatekeeper');
  Delay(500);
  Engine.BypassToServer('10');
  Delay(5000);
  Engine.SetTarget('Milia');  //Target Gatekeeper
  Print('Heading to the Gatekeeper');
  Delay(5000);
  Engine.DlgOpen; //Open chat
  Delay(15000);
  Print('Selecting the spot')
  Engine.DlgSel(03);
  Delay(10000);
  Engine.DlgSel(09);
  Print('Teleporting to First Spot');
  Delay(5000);
end;

// Teleport to second spot level 20-40 | Inside Ant Nest
procedure FSecond;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsgetfav');
  Delay(500);
  Engine.BypassToServer('_bbsgatekeeper');
  Delay(500);
  Engine.BypassToServer('_bbsgatekeeper_main-13.htm');
  Delay(500);
  Engine.BypassToServer('13');
  Print('Teleporting to Second Spot');
  Delay(5000);
end;

// Teleport to third spot level 40-55 | Fields of Massacre
procedure FThird;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsgetfav');
  Delay(500);
  Engine.BypassToServer('_bbsgatekeeper');
  Delay(500);
  Engine.BypassToServer('_bbsgatekeeper_main-13.htm');
  Delay(500);
  Engine.BypassToServer('14');
  Print('Teleporting to Third Spot');
  Delay(5000);
end;

end.
