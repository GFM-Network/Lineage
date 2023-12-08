unit TBuff;

interface

implementation

procedure FFighter;
begin
  Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsbuffer');
  Delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet mage 0 0');
  Delay(500);
  Print('Buff TFighter');
end;

procedure FMage;
begin
 Engine.BypassToServer('_bbshome');
  Delay(500);
  Engine.BypassToServer('_bbsbuffer');
  Delay(500);
  Engine.BypassToServer('_bbsbufferbypass_giveBuffSet mage 0 0');
  Delay(500);
  Print('Buff TMage');
end;

end.
