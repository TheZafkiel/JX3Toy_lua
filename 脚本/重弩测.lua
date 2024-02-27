ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴", "" },
{ "秘籍", "" },
{ "说明", " " },
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
	
	if nopuppet() then
	cast('千机变')
	end
   if bomb(0)  or   bomb(1) then
        cast('暗藏杀机')
        
    end
	
if puppet("底座|连弩|毒刹") then
        cast('重弩形态')
       
    end
	if puppet("重弩")then
	cast('攻击')
	end
	
	if tnombuff('化血') or tmbufftime('化血') < 10 and dis() < 19 then
            cast('天女散花')
        end
		cast('天地灭绝')
	if buff('暗藏杀机C')then
	cast('图穷匕见')
	end
	cast('暴雨梨花针')
	cast('蚀肌弹')
    
       
        
end