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
  if InZone(-107960, 215560, -3264) then    
  Engine.LoadConfig('Autolevel');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

procedure FSecond;
// Move to second spot level 20-40 | Outside Cruma Tower
begin
  Print('Fight zone');
  Engine.MoveTo(5106,126916,-3664);
  Print('First Zone');
  Delay(5000);
  Engine.MoveTo(5976,125880,-3648);
  Print('Second Zone');
  Print('Fight zone');
  Engine.MoveTo(6776,124920,-3648);
  Print('Third Zone');
  Delay(5000);
  Engine.MoveTo(7320,124088,-3664);
  Print('Fourth Zone');
  Print('Fight zone');
  Engine.MoveTo(8312,123304,-3696);
  Print('Fifth Zone');
  Delay(5000);
  Engine.MoveTo(9160,122872,-3728);
  Print('Sixth Zone');
  if InZone(9160,122872,-3728) then    
  Engine.LoadConfig('Autolevel');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

procedure FThird;
// Move to third spot level 40-55 | Cemetery
begin
  Print('Fight zone');
  Engine.MoveTo(172136, 20325, -3312);
  Print('First Zone');
  Delay(1000);
  Engine.MoveTo(172488, 19704, -3296);
  Delay(1000);
  Print('Second Zone');
  Engine.MoveTo(175432, 19688, -3232);  
  Print('Third Zone');
  if InZone(175432, 19688, -3232) then    
  Engine.LoadConfig('Autolevel');    // Adrenaline Settings
  Print('Start Farm!');
  Engine.Facecontrol(0, True);
end;

end.