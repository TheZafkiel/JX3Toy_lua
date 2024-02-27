ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴", "[尻尾,无常,黯影,虫兽,桃僵,不鸣,蛇蜒,祭礼,蛇悉,蛊虫狂暴,荒息,啖灵]" },
{ "秘籍", "灵蛊（秘籍：招式伤害x3）凤凰蛊（秘籍：调息x2，效果x2）蛊虫献祭（秘籍：调息x2，效果x2）蛇影（秘籍：持续x1，伤害x2，会心4%）千丝（秘籍：调息x1，伤害x3）" },
{ "说明", " 加速：1928（2段，1.38s）" },
}

addopt("未进战不开怪", true)

function Main()
   DPS()
end
function DPS()

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
	
	if state("站立|走路") then
	use("连城白")
	end
	
	if nobuff("虫兽") then
        cast("灵蛇引")
	end
	
	if qixue('桃僵') and mana() < 0.7 then
		cast('灵蛊')
	end

	if nocd("凤凰蛊") then
        cast("凤凰蛊")
    end

	if pet("灵蛇")  then
	cast("蛊虫献祭")
	end
	
	if buff("灵蛇献祭")  then
	cast("蛊虫狂暴")
	end
	
    fcast('攻击')
    fcast('幻击')
	
	if target("npc") and  tnombuff("蛇影") or tmbufftime("蛇影") < 3 or  buff("昆山玉碎")  or buff("蛇影迷蝶") then
        cast("灵蛊")
    end
	
        cast("百足")
		
	if tnombuff('蛇影') or tbufftime('蛇影') < 2 then
		cast('蛇影')
	end
		  
        cast("蝎心")
		
	if target("npc") and  tnombuff("蟾啸") then
        cast("蟾啸")
    end
	
        cast("千丝")

end