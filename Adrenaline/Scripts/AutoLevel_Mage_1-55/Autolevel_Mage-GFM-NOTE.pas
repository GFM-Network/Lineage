var Figth_Flag:boolean;
     Item: TL2Item;
     Npc: TL2Npc;
     Obj: TL2Buff;
     IdBuff: integer;
     Buffs:TL2Buff;
var L2Skill: TL2Skill;



procedure toQuest;
begin
     Delay(400);
     Engine.SetTarget('Roxxy');  //Target do NCP GK
     Delay(400);
     Engine.DlgOpen; // abre chat combat npc
     Delay(400);
     Engine.DlgSel(02);
     Delay(400);
     Engine.DlgSel(08);
     Delay(400);
end;

//-----------------------------------------------------------------------------
begin    //repete novamente o script
Print('repete novamente');
  repeat
   toQuest;
  until Engine.Status = lsOffline;
  Delay(5000);
end.