--作者
ZuoZhe = 'HJ'
--奇穴
QiXue = '[[奇穴：[星旗][雪覆][破月][风骨][北阙][渊岳][玄肃][王师][百节][忘断][徵逐][青山共我]'
--其他说明
ShuoMing = '起手贴紧boss手动链子[血覆黄泉技能] 特殊情况技能中断起手贴紧boss手动链子'


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

if buff('单链') and last('血覆黄泉',0.5) and nobuff('徵逐') and nobuff('忘断') and nobuff('百节') and cn('寂洪荒')==3  and dis() < 4 then
	cast('青山共我')	
end

if buff("单链") and nocd("金戈回澜") and dis() > 6 then
	cast("金戈回澜")	
end

if dis() < 4 and cd('乱天狼')  and cdtime('金戈回澜')<6 then
	cast('青山共我')
end

if last('青山共我',0.5) then
	cast('幽冥窥月')
end

if last('幽冥窥月',0.5) or buff('徵逐') and dis() < 6 then
	cast('日月吴钩')
end

if buff('徵逐') and buff('忘断') and nobuff('单链') and buffsn('百节') < 3 then
	cast('寂洪荒')
end

if buffsn('百节')==3 then
	cast('隐风雷') 
end

if buffsn('百节')==3 and cd('隐风雷') then
	cast('乱天狼')
		if cd('乱天狼') then
			cast('血覆黄泉')
			cast('金戈回澜')
			cast('铁马冰河')
		end
end

--[[if cd('乱天狼') then
	cast('金戈回澜')
	cast('铁马冰河')
end--]]

if buff('单链') and dis()<6 then
	cast('星垂平野')
end


if  cd('金戈回澜') and cdtime('金戈回澜')<5 then
	cast('幽冥窥月')
end	

if  tnombuff('链接') and nobuff('单链') and cn('寂洪荒')>2 and fight() and otatime()<1 and nobuff('徵逐') and nobuff('忘断') and nobuff('百节') and cd('金戈回澜')then
	cast('血覆黄泉')
end	

cast('星垂平野')

end
