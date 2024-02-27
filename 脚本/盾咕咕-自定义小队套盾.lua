ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴", "盾咕咕" },
{ "秘籍", "常规秘籍" },
{ "说明", "盾+徵" },
{ "说明2", "勾哪队奶哪队" },
}
addopt("给1队套盾", true)
addopt("给2队套盾", true)
addopt("给3队套盾", true)
addopt("给4队套盾", true)
addopt("给5队套盾", true)

function Main()
   DPS()
end
function DPS()

--切姿态
if pose("高山流水") or pose("阳春白雪") or pose("平沙落雁")then
        fcast("梅花三弄", true)
end
--如果自己的蓝量百分比小于0.6,  对自己释放技能疏影横斜
	if mana() < 0.6  and cn('疏影横斜') > 0 then
		cast("疏影横斜", true)
	end
	if cn('疏影横斜') < 3 then
		cast("移形换影")
	end
-- 回蓝结束

local meidun = teamp("没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达", "内功:洗髓经|易筋经|花间游|傲血战意|铁牢律|紫霞功|太虚剑意|冰心诀|毒经|惊羽诀|天罗诡道|问水诀|山居剑意|焚影圣诀|明尊琉璃体|笑尘诀|分山劲|铁骨衣|莫问|相知|北傲诀|凌海诀|太玄经")

--获取队友
--如果有，启用了,释放技能 
	if meidun and getopt("给1队套盾") then
		settar(teamp("小队:1","没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达", "内功:洗髓经|易筋经|花间游|傲血战意|铁牢律|紫霞功|太虚剑意|冰心诀|毒经|惊羽诀|天罗诡道|问水诀|山居剑意|焚影圣诀|明尊琉璃体|笑尘诀|分山劲|铁骨衣|莫问|相知|北傲诀|凌海诀|太玄经"))
	end
	if dis() < 20 and tnobuff("梅花三弄") and tnobuff("落梅") then
        fcast("梅花三弄")
    end
--	
	if meidun and getopt("给2队套盾") then
		settar(teamp("小队:2","没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达", "内功:洗髓经|易筋经|花间游|傲血战意|铁牢律|紫霞功|太虚剑意|冰心诀|毒经|惊羽诀|天罗诡道|问水诀|山居剑意|焚影圣诀|明尊琉璃体|笑尘诀|分山劲|铁骨衣|莫问|相知|北傲诀|凌海诀|太玄经"))
	end
	if dis() < 20 and tnobuff("梅花三弄") and tnobuff("落梅") then
        fcast("梅花三弄")
    end
--
	if meidun and getopt("给3队套盾") then
		settar(teamp("小队:3","没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达", "内功:洗髓经|易筋经|花间游|傲血战意|铁牢律|紫霞功|太虚剑意|冰心诀|毒经|惊羽诀|天罗诡道|问水诀|山居剑意|焚影圣诀|明尊琉璃体|笑尘诀|分山劲|铁骨衣|莫问|相知|北傲诀|凌海诀|太玄经"))
	end
	if dis() < 20 and tnobuff("梅花三弄") and tnobuff("落梅") then
        fcast("梅花三弄")
    end
--
	if meidun and getopt("给4队套盾") then
		settar(teamp("小队:4","没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达", "内功:洗髓经|易筋经|花间游|傲血战意|铁牢律|紫霞功|太虚剑意|冰心诀|毒经|惊羽诀|天罗诡道|问水诀|山居剑意|焚影圣诀|明尊琉璃体|笑尘诀|分山劲|铁骨衣|莫问|相知|北傲诀|凌海诀|太玄经"))
	end
	if dis() < 20 and tnobuff("梅花三弄") and tnobuff("落梅") then
        fcast("梅花三弄")
    end
--
	if meidun and getopt("给5队套盾") then
		settar(teamp("小队:5","没状态:重伤", "距离小于:20", "没buff:落梅|梅花三弄", "视线可达", "内功:洗髓经|易筋经|花间游|傲血战意|铁牢律|紫霞功|太虚剑意|冰心诀|毒经|惊羽诀|天罗诡道|问水诀|山居剑意|焚影圣诀|明尊琉璃体|笑尘诀|分山劲|铁骨衣|莫问|相知|北傲诀|凌海诀|太玄经"))
	end
	if dis() < 20 and tnobuff("梅花三弄") and tnobuff("落梅") then
        fcast("梅花三弄")
    end
--

if dis() < 20 then
        cast("徵")
		else
		return
    end
end