function 副本_解救剑心(Outtime,Dis,跳转标签)
	local v1
	Dis = Dis or 20
	local dwTickCount = lua_GetTickCount()
	--OutputMessage('副本_解救剑心 Begin')
	while true do
		延时(200)
		卡点反馈('卡点:副本_解救剑心',dwTickCount)
		local Find = function ()
			local MONTABLE,v,k
			MONTABLE = 怪物_属性表数组()
			for k,v in ipairs(MONTABLE) do
				if string.find('相嬴禅师|相来禅师|相如禅师',v.szName) ~= nil and v.nDistance3D < Dis then
					return v
				end
			end
			for k,v in ipairs(MONTABLE) do
				if v.szName == '剑心' and v.nDistance3D < Dis then
					return v
				end
			end
			return nil
		end
		v1 = Find()
		if not v1 then
			break
		end
		击杀_使用技能(v1)
		if Outtime and lua_GetTickCount() - dwTickCount >= Outtime*1000 then
			if 跳转标签 and type(跳转标签) == 'string' then
				跳转至标签(跳转标签,1)
			end
			break
		end
	end
	--OutputMessage('副本_解救剑心 End')
	尸体_拾取指定怪物('相嬴禅师|相来禅师|相如禅师|剑心|剑心的包裹',20)
	关闭拾取列表()
	战斗_清理身边怪物(20,5)
	延时(100)
	尸体_拾取指定怪物('相嬴禅师|相来禅师|相如禅师|剑心|剑心的包裹',20)
	检查轻功移动状态()
	回复血量()
end
function 副本初始化()
	设置_自动复活('否')
	队伍_禁止组队()
	队伍_设置主动组队('否')
	设置_各职业技能方案()
	if 执行_继续上次脚本记录行数() == 0 then
		执行_副脚本('副本-英雄寂灭厅.lua')
	end
end
副本初始化()