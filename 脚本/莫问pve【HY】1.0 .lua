--作者
ZuoZhe = "HY"
--奇穴
QiXue = "[号钟][飞帆][风][凌冬][豪情][师镶][广雅][刻梦][书离][云汉][参连][无尽藏]"
--其他说明
ShuoMing = "大徽流派，全自动。注意尽可能不要打断徵的输出，这是最核心的伤害技能。 可以手动根据时间轴切体态，需要大量位移的时候切高山流水，其他时候都阳春白雪保证输出。少量位移如果不影响徵都不用切高山。"
function Main()
	gaoshanls=0
   DPS()
end
function DPS()
	if tota('铁锈钩锁') then
		fcast('青霄飞羽')
	end
	if buff('凌冬·三') and bufftime('青霄飞羽') >=5 then
		fcast('高山流水')
		gaoshanls=1		
	end	
	if nobuff('青霄飞羽') and gaoshanls==1	then
		cast("阳春白雪")
		gaoshanls=0		
	end
    if nobuff('孤影化双') then
        cast("孤影化双")
    end
	if buff('孤影化双')  then
        cast("疏影横斜",true)
		if nobuff("凌冬·三") then
		cast("羽")
		end
    end
	if bufftime('孤影化双') <=1 then
        fcast("孤影化双")
    end	
	if tnombuff('商') then
        cast("商")
    end
	if tnombuff('角') then
        cast("角")
    end
	if pose('阳春白雪') then
		fcast("阳春白雪")
	end
	if buff('凌冬·一') or buff('凌冬·二') then
        cast("羽")
    end
    if buff('凌冬·三') then
        cast("徵")
    end
	if cn("羽")==4 then
		cast("羽")
	end
	if cn("疏影横斜")==3 then
		cast("移形换影")
		cast("疏影横斜",true)
	end
	if tmbufftime('商') <=5 or tmbufftime('角')<=5 then
        cast("宫")
		cast("变宫")
    end	
	if nobuff('凌冬·一') and nobuff('凌冬·二') then
	    cast("徵")
		cast("变徵")
	end
	if cntime("羽")>10.5 then
		cast("宫")
		cast("变宫")
	end
	if cntime("羽")<=10 then
		cast("羽")
	end
	cast("宫")

end