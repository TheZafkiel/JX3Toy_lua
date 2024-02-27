ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴", "[白虹,心固,无形,归元,同尘,跬步,万物,抱阳,浮生,破势,自化,固本" },
{ "秘籍", "两仪:4会4伤5伤续气半格;四象:3会4会-0.25cd*2;万世:3伤4伤5伤2命;破:+1尺*3消耗降低40%;坐忘无我:cd-4 -8 受伤降低 50%	移速提高 6秒;凭虚御风:cd-15*2闪避恢复气血 2% 移速提高 5秒;生太极:范围+1*3 消耗降低 40%;太极无极:15伤*2 20伤4会" },
{ "说明", " 勾为自动 不勾手动 默认手动 破苍穹不足1.5s或出范围自动续" },
}

addopt("未进战不开怪", true)
addopt("六合独尊", false)
addopt("紫气东来", false)

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
	
-- 是如果自己到气场边缘小于1尺，没破苍穹或者剩余时间小于1.5秒, 就在自己脚下放破苍穹
	if nobuff('破苍穹') or nolast('破苍穹', 30)--[[抱阳]] or qctime("破苍穹", -1) < 1.5 then
        cast('破苍穹', true)
    end
	
	if nobuff('气剑') then --[[万世1]]
        fcast('万世不竭', true)
    end
	
	if nobuff("破势") and qixue("破势", 10) then
        cast('镇山河', true)
    end	
	
	if getopt("六合独尊") then
		cast('六合独尊')
	end
	
	if bufftime('气剑')<1.7 then --[[万世2]]
		cast('万世不竭')
	end
	
	if getopt("紫气东来") and nombuff('2757' --[[紫气]]) and last('破苍穹',24)  and last('六合独尊',1.6) then
        cast('紫气东来')
    end
	
	if bufftime('2757' --[[紫气]]) > 5 then
        cast('凭虚御风')
    end
	
	if qidian() > 8 and mbuff("2757")  then
        cast('两仪化形')
    end	

	if qidian() > 8 or last('四象轮回', 1.5) and nombuff("2757")  then
        cast('两仪化形')
    end
	
	if  last('六合独尊',1.7) and nolast('紫气东来',55)then
			cast('万世不竭')				
	end
	
--无gcd补	
	if  last('两仪化形',1.3) and tmbuff('气竭') then
			cast('九转归一')
		if  dis()<=8 and nolast('九转归一',0.5) then
			cast('三才化生')				
		end				
	end

	
	if mana() < 0.42 and nobuff('2757') and qidian() < 8 and qixue("化三清", 3) then
        cast('化三清', true)
    end
	
	if state('站立') then
        cast('四象轮回')
    end
	
    cast('太极无极')

end