--����
ZuoZhe = ""
--��Ѩ
QiXue = ""
--����˵��
ShuoMing = "�Զ�����ű�"
function Main()
   DPS()
end
function DPS()

--����npc
if
 face() > 45
 then
 turn(0)
end
--����5��ǰ
if
dis() > 5
then
movef(true)
turn(0)
end

if 
 dis() <= 5 
then
movef(false)
turn(0)
end
	
end