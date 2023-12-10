unit TPath;
//fifthfirs
interface

implementation


procedure FFirst;
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

procedure FSecond;
// Move to second spot level 20-40 | Inside Ant Nest
begin
  Engine.MoveTo(-26012,173699,-4128);
  Delay(3000);
  Engine.MoveTo(-26408,174344,-4328);
  Print('1th Zone');
  Engine.MoveTo(-26408,174360,-4328);
  Print('2th Zone');
  Delay(3000);
  Engine.MoveTo(-26840,175000,-4424);
  Print('3th Zone');
  Engine.MoveTo(-27432,175064,-4640);
  Print('4th Zone');
  Delay(3000);
  Engine.MoveTo(-28056,174712,-4816);
  Print('5th Zone');
  Delay(3000);
  Engine.MoveTo(-28552,174072,-4816);
  Print('6th Zone');
  Delay(3000); 
  Engine.MoveTo(-29080,174264,-4912);
  Print('7th Zone');
  Delay(3000);
  Engine.MoveTo(-29272,175016,-5176);
  Print('Fight Zone');
  Delay(3000);
  Engine.LoadConfig('AutolevelFighter');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

procedure FThird;
// Move to third spot level 40-55 | Fields of Massacre
begin
  Engine.MoveTo(183614,-14896,-2768);
  Print('First Zone');
  Delay(4000);
  Engine.MoveTo(183096,-13848,-2808);
  Delay(4000);  
  Print('Fight zone');
  Engine.LoadConfig('AutolevelFighter');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

end.