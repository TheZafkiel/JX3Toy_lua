--����
ZuoZhe = ""
--��Ѩ
QiXue = ""
--����˵��
ShuoMing = ""
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
movef()
turn(0)
end

if 
 dis() <= 5 
then
stopf()
turn(0)
end
	
end