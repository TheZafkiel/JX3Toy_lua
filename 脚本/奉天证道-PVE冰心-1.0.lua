--作者
ZuoZhe = "Zafkiel"
--奇穴
QiXue = "[青梅嗅][千里冰封][新妆][青梅][枕上][长依/广陵月][望舒][元君][霜风][化冰][疾光][霜降]"
--秘籍
MiJi = "无"
--其他说明
ShuoMing = "急速：1542（最低）5868（推荐） 可能会缺蓝 手动江海  "

addopt("未进战不开怪", true)

function Main()
   DPS()
end
function DPS()

--如果在马上,下马
	if horse() then
		cbuff("骑御")
	end
	if qidian() == 0 then
		cast("名动四方", true)
end	
	
--半血天地
	if life() < 0.5 and fight() then
		cast("天地低昂", true)
	end
	
--如果没有目标或者目标重伤或者目标不是敌对关系,直接返回
	if notarget() or tstate("重伤") or not rela("敌对") then
		return
	end

--如果选择了"未进战不开怪"选项并且自己不在战斗状态,直接返回
	if getopt("未进战不开怪") and nofight() then
		return
	end
	
	if nostate("站立")  then
	return
	end

if nocd("心鼓弦") then
        cast("心鼓弦")
    end
if target("boss") and  nocd("繁音急节") and buffsn("枕上") == 5 then
        cast("繁音急节")
    end
	
if  target("boss") and qixue("广陵月") and buffsn("枕上") == 5 then
      fcast("广陵月")

end
	
if nocd("剑破虚空") and tbuffsn("急曲") < 3 or mana() < 0.5 or tmbufftime("急曲") < 2 then
        fcast("剑破虚空")
    end
 
      cast("剑破虚空")
      cast("玳弦急曲")
end