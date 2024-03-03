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
------------------------------------------------没有挂件的删掉这段
--挂件图标拖到技能栏，actionclick使用第4排第14个挂件
--不在马上 用套马杆
if nobuff("套马杆") and  nobuff("骑御")
then
actionclick(4, 14)
end

--赤兔专属 上下马判定  没青竹白玉索的删掉这段 （待优化-赤兔被抓太快了还没写完... ）
if  bufftime("套马杆") <= 60 and tbufftime("驻足") >= 30 and tname("赤兔")
then
cbuff("骑御")
actionclick(4, 14)
cast(53)
------------------------------------------------没有挂件的删掉这段


end

--面向
if
 face() > 120
 then
 turn()
end
--大于15向前
if
dis() > 15
then
movef(true)
turn()
end
--在距离内套马
if 
  dis() <= 30
then
  cast("套马")
  turn(0)
end
--套马读条停移动
if 
casting("套马") and dis() <= 5
then
movef(false)
turn()
end


end
-------------------------------
--阴山    [小赤]说：良驹已出山，各位有志之士请做好准备！
