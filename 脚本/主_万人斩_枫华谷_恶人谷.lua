-- 使用说明:
-- 唯一需要修改的是 万人斩主阵营 如果是恶人请填 恶人谷 保存
--  填阵营名的则是大号一方
--  1V1 1v2 1v3 1vN 均是使用本脚本
--  主要攻击技能是1 2 3 键
-- 开始杀时,手动换掉装备
------------------------- 只需换阵营名 ----------------------------------

万人斩主阵营 = "恶人谷"



-------------------------- 下面不用修改 ----------------------------------

设置_复活类型('营地复活',0)
设置_自动换新装备('是')
设置_自动换新背包('是')
设置_自动ROLL('是')
设置_各职业技能方案()
队伍_禁止组队()
队伍_设置主动组队('否')
阵营_阵营模式(1)
BUFF_被动取消BUFF('是','回神|遁影|太虚')
if AutoFunction.GetRoleszMapName() ~= '枫华谷' then
	交通_寻路神行车夫('扬州',70905,45428,1052096,'卡点下线')
end
if AutoFunction.GetRoleszMapName() == '扬州' then
	寻路导航(70905,45428,1052096)
	寻路Ex(70905,45428,1052096,1)
	::对话重复::
	NPC_对话('余半仙')
	NPC_对话选项内容('C 接引·返回盛唐故地')
	延时(1000)
	NPC_对话选项内容('C 追忆枫华谷的枫红如火……')
	延时(5000)
	if not 等待_过图读条() then goto 对话重复  end
end
if AutoFunction.GetDis(65639,39391,1062144) >=50 then
	交通_寻路神行车夫('枫华谷',65639,39391,1062144,'卡点下线')
end
if 取角色阵营名字() == 万人斩主阵营 then
	while true do
		寻路Ex(65569,39392,1062080,1)
		if 选中最近敌对目标(8) then
			按键(1)
			延时(200)
			按键(2)
			延时(200)
			按键(3)
		else
			延时(200)
		end
	end
else
	跳跃()
	while true do
		延时(500)
	end
end