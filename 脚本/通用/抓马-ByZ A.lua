--作者
ZuoZhe = "Zafkiel"
--奇穴
QiXue = "_(:зゝ∠)_"
--秘籍
MiJi = "无"
--其他说明
ShuoMing = "手动开[青竹白玉索]或使用**命令"

function Main()
   DPS()
end
function DPS()


--面向
if
 face() > 45
 then
 turn(0)
end
--大于8向前
if
dis() > 5
then
movef()
turn(0)
end
--在距离内套马
if 
  dis() <= 13   
then
  cast("套马")
  turn(0)
end
--套马读条停移动
if 
ota("套马") and dis() <= 5 
then
stopf()
turn(0)
end


end