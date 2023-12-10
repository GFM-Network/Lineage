unit TBuff;

interface

implementation

procedure FFighter;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsgetfav');
  Delay(500);
  Engine.BypassToServer('_bbsbuffer');
  Delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet figher 0 0');
  Delay(500);
  Print('Character is buffed with fighter macro!');
end;

procedure FMage;
begin
 Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsgetfav');
  Delay(500);
  Engine.BypassToServer('_bbsbuffer');
  Delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet mage 0 0');
  Delay(500);
  Print('Character is buffed with mage macro!');
end;

end.