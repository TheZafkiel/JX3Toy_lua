function 浩气加阵营初始化()
	if AutoFunction.GetRoleLev() < 95 then
		自定义账号状态("卡点:你不够95级,不能加阵营")
		延时(8000)
		结束游戏()
		return
	end
	if 取角色阵营名字() ~= '中立' then
		自定义账号状态("你非中立玩家,不用云加阵营")
		自定义账号状态("勾选",0)
		延时(8000)
		结束游戏()
		return
	end
	设置_复活类型('原地复活')
	设置_自动换新装备('是')
	设置_自动换新背包('是')
	设置_自动ROLL('是')
	设置_各职业技能方案()
	队伍_禁止组队()
	队伍_设置主动组队('否')
	设置_自动复活('是')
	if 执行_继续上次脚本记录行数() == 0 then
		执行_副脚本('阵营_前往浩气加入.lua')
	end
	自定义账号状态('成功加入阵营')
	自定义账号状态('勾选',0)
	延时(8000)
	结束游戏()
end
浩气加阵营初始化()