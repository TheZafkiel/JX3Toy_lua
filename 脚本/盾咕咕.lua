ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴", "盾咕咕" },
{ "秘籍", "常规秘籍" },
{ "说明", "盾+徵" },
}

function Main()
   DPS()
end
function DPS()

--切姿态
if pose("高山流水") or pose("阳春白雪") or pose("平沙落雁")then
        fcast("梅花三弄", true)
end
if notarget() or target('boss') or tbuff("梅花三弄") or tbuff("落梅") then
        settar(teamp("没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达"))
    end
if dis() < 20 and tnobuff("梅花三弄") and tnobuff("落梅") then
        fcast("梅花三弄")
		else
		settar(teamp("没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达"))
    end
if dis() < 20 and tbuff("梅花三弄") then
        cast("徵")
		else
		settar(teamp("没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达"))
    end
end