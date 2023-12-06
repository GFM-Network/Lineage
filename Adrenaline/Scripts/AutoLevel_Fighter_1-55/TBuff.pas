unit TBuff;

interface

implementation

procedure FFighter;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet figher 0 0');
  delay(500);
  Print('Buff TFighter');
end;

procedure FMage;
begin
  Engine.BypassToServer('_bbshome');
  delay(500);
  Engine.BypassToServer('_bbsbuffer');
  delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet mage 0 0');
  delay(500);
  Print('Buff TMage');
end;

end.