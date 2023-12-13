unit TTools;

interface

implementation

//Goes to village if the character is dead
procedure FtoVillageIfDeath;
begin
  Delay(100);
  if (User.HP = 0) then
  begin
    Print('Char Morto');
    Delay(1000);
    Engine.GoHome;
    Engine.Facecontrol(0, False);
    Delay(5000);
    Print('To Vilage');
  end;
end;

//Invite to party if received pm
procedure FInvitePorPm;
begin
  if (ChatMessage.Text = '102030') and ChatMessage.Unread then
    if (ChatMessage.ChatType = ctPrivate) then
      Engine.InviteParty(chatmessage.sender);
end;

//Check if character has agro mobs
function FHaveAgroMobs(): boolean;
var
  i: integer;
begin
  result := false;
  for i := 0 to NpcList.Count - 1 do
  begin
    if IsAgr(NpcList(i)) then
    begin
      result := true;
      exit;
    end;
  end;
end;

function IsAgr(Mob: TL2Npc): boolean;
begin
  result := (Mob.Target = User) and (not Mob.Dead);
end;

end.
