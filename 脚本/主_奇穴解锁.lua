function 队员协助初始化()
	local 队长,队员名列表 = 奇穴解锁_取配置队伍名单()
	local roletable = GetClientPlayerTB();
	if string.find(队员名列表,roletable.szName) == nil then
		OutputMessage("当前角色并不在奇穴解锁.ini队员列表里面,请填写,多个队员,请以|分隔开")
		结束脚本()
		return
	end
	if 队长 == '' then
		OutputMessage("队长名字不能为空,请 奇穴解锁.ini里填写")
		结束脚本()
		return
	end
	设置_复活类型('原地复活')
	设置_自动换新装备('是')
	设置_自动换新背包('是')
	设置_自动ROLL('是')
	队伍_允许组队()
	队伍_设置主动组队('否')
	协助_接受指定角色组队('是',队长)
	设置_各职业技能方案()
	while true do
		协助_解释并执行_队长指令('是','队伍',队长)
		延时(100)
	end
	协助_解释并执行_队长指令('否','队伍',队长)
	协助_接受指定角色组队('否',队长)
end
function 奇穴解锁初始化()
	local 队长,队员名列表 = 奇穴解锁_取配置队伍名单()
	if GetClientPlayerTB().szName == 队长 then
		队伍_禁止组队()
		设置_复活类型('原地复活')
		设置_自动换新装备('是')
		设置_自动换新背包('是')
		设置_自动ROLL('是')
		设置_各职业技能方案()
		队伍_设置主动组队('否')
		
		队伍_组队指定角色(队员名列表)
		技能_切换心法('攻击')
		奇穴_检查升级()
		if 执行_继续上次脚本记录行数() == 0 then
			执行_副脚本('奇穴解锁任务.lua')
		end
	else
		if 队员名列表 == '' then
			OutputMessage("队员名列表不能为空,多个队员名,请以|来分隔开")
			结束脚本()
			return
		end
		队员协助初始化()
	end
end

奇穴解锁初始化()

--[[
--- 使用说明 请在控制台->快捷打开->奇穴解锁.ini 按钮点击开打 请按以下格式填写
--- 我使 梦江南(点卡服) 来举例
--- 队长角色请执行 奇穴解锁_队长.lua
--- 队员角色请执行 奇穴解锁_队员.lua
--- 多个队员请用|来分隔开
--- 只要队长成功组上一名队员,就开始出发.支持4个队员跟随
--- 目前只支持 明教,苍云,七秀,唐门作为队员

[梦江南(点卡服)]
队长=城苗
队员列表=牡丹江|抗把子


--]]