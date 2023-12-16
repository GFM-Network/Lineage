unit TPath;
interface

implementation


procedure FHumanVilage;
// Move to first spot level 5-20 | Talking Island Obelisk of Victory
begin
  Print('Fight zone');
  Engine.MoveTo(-106606, 214645, -3408);
  Print('First Zone');
  Delay(1000);
  Engine.MoveTo(-107960, 215560, -3264);
  Print('Second Zone');    
  Engine.LoadConfig('AutolevelFighter');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;


procedure FAntNest;
// Move to second spot level 20-40 | Brekas Orc
begin
  Engine.MoveTo(85546,131328,-3656);
  Print('1th Zone');
  Engine.MoveTo(84712,130536,-3600);
  Print('Fight Zone');
  Engine.LoadConfig('AutolevelFighter');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

procedure FFieldsofMassacre;
// Move to third spot level 40-55 | Fields of Massacre
begin
  Engine.MoveTo(183614,-14896,-2768);
  Print('First Zone');
  Delay(4000); 
  Print('Fight zone');
  Engine.LoadConfig('AutolevelFighter');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

end.