unit TTools;

interface

implementation

procedure FtoVillageIfDeath;
begin
  Delay(100);
    if (User.HP=0) then
      begin
       Print('Char Morto');
       Delay(1000);
       Engine.GoHome;
       Engine.Facecontrol(0,False);
       Delay(5000);
       Print('To Vilage');
      end;
end;


procedure FInvitePorPm;
begin
if (ChatMessage.Text = '102030') and ChatMessage.Unread then
  if (ChatMessage.ChatType = ctPrivate) then
    Engine.InviteParty(chatmessage.sender);
  end;
end.


end.
