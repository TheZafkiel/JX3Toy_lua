--作者
ZuoZhe = ""
--奇穴
QiXue = ""
--其他说明
ShuoMing = ""
function Main()
   DPS()
end
function DPS()

--跟随npc
if
 face() > 45
 then
 turn(0)
end
--大于5向前
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