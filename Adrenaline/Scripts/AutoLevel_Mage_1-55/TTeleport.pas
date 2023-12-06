unit TTeleport;

interface

implementation

//Townzone Dark Elf
procedure FTownzone;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_15_1');
  Print('Teleporting To Townzone');
  delay(5000);
end;

//Teleport to first spot level 5-20 | Talking Island Obelisk of Victory
procedure FFirst;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_15_1');
  Print('Teleporting to First Spot');
  delay(5000);
end;

//Teleport to second spot level 20-40 | Outside Cruma Tower
procedure FSecond;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_15_1');
  Print('Teleporting to Second Spot');
  delay(5000);
end;

//Teleport to third spot level 40-55 | Cemetery
procedure FThird;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_cbbsteleportlist');
  delay(500);
  Engine.BypassToServer('_cbbsteleport_15_1');
  Print('Teleporting to Third Spot');
  delay(5000);
end;

end.