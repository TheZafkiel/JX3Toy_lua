任务_是否存在('江湖道远侠义天下','是','<任务存在>')
交通_寻路神行车夫('扬州',69086,62958,1052992,'卡点下线')
寻路(68350,62952,1052736)
接受任务('秘境任务','江湖道远侠义天下')
<任务存在>
条件跳转('任务已完成跳转','秘境任务','江湖道远侠义天下','<江湖道远侠义天下退出>')
交通_寻路神行车夫('侠客岛',61043,24210,1048768,'卡点下线')
回复气力值()
寻路导航(30589,22491,1048832)
回复气力值()
寻路导航(18622,23336,1048896)
设置_复活类型("营地复活")


<雾岛寻丹·丹炉>
寻路Ex(18622,23336,1048896,1)
NPC_对话('云月')
NPC_对话选项内容('C 给我丹炉')
延时(1000)
背包_统计物品数量("雾岛寻丹·丹炉","=",0,"<雾岛寻丹·丹炉>")

if 取随机数(1,3) == 1 then 跳转至标签('<坐标一>') end
if 取随机数(1,3) == 2 then 跳转至标签('<坐标二>') end
if 取随机数(1,3) == 3 then 跳转至标签('<坐标三>') end

----------------- 坐标1 -----------------------------
<坐标一>
轻功寻路(15967,24309,1049664)
<没找到炉子>
寻路Ex(15967,24309,1049664,1)
使用物品_等待读条("雾岛寻丹·丹炉")
使用物品_等待读条("雾岛寻丹·丹炉")
使用物品_等待读条("雾岛寻丹·丹炉")
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<没找到炉子>')

<江湖道远侠义天下>
清理_任务怪物('江湖道远侠义天下',15967,24309,1049664,40,'侠客岛_木材|侠客岛_兽皮|侠客岛_兽丹|侠客岛_毒茹|侠客岛_高阶兽丹|侠客岛_贝壳|侠客岛_丹炉零件|侠客岛_木柴',1,'黑蛇|木材|蝎|迷失的寻宝人|尸化的寻宝人')
背包_物品列表存在("雾岛寻丹·木材|雾岛寻丹·兽皮|雾岛寻丹·兽丹|雾岛寻丹·毒茹|雾岛寻丹·高阶兽丹|雾岛寻丹·贝壳|雾岛寻丹·零件|雾岛寻丹·木柴","是","<交任务物品>")
公共_个人贡献积分跳转(100,'=','<公共积分完成>')
条件跳转('任务未完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下>')
条件跳转('任务已完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下完成>')
跳转至标签('<江湖道远侠义天下>')
<交任务物品>
计时_初始化计时()
<交任务物品Ex>
计时_时间秒数比较跳转(120,'是','<坐标一>')
寻路Ex(15967,24309,1049664,1)
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<交任务物品Ex>')
NPC_对话('丹炉')
NPC_对话选项内容('C 放入身上的所有材料')
跳转至标签('<江湖道远侠义天下>')

<江湖道远侠义天下完成>
<公共积分完成>
寻路Ex(15702,24323,1049920,1)
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<公共积分完成>')
NPC_对话('丹炉')
NPC_对话选项内容('C 结算贡献')
延时(1000)
条件跳转('任务未完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下>')
延时(1000)
跳转至标签('<公共日常完成>')

----------------- 坐标2 -----------------------------
<坐标二>
轻功寻路(17692,21427,1049152)
<没找到炉子1>
寻路Ex(17692,21427,1049152,1)
使用物品_等待读条("雾岛寻丹·丹炉")
使用物品_等待读条("雾岛寻丹·丹炉")
使用物品_等待读条("雾岛寻丹·丹炉")
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<没找到炉子1>')

<江湖道远侠义天下1>
清理_任务怪物('江湖道远侠义天下',17692,21427,1049152,40,'侠客岛_木材|侠客岛_兽皮|侠客岛_兽丹|侠客岛_毒茹|侠客岛_高阶兽丹|侠客岛_贝壳|侠客岛_丹炉零件|侠客岛_木柴',1,'黑蛇|木材|蝎|迷失的寻宝人|尸化的寻宝人')
背包_物品列表存在("雾岛寻丹·木材|雾岛寻丹·兽皮|雾岛寻丹·兽丹|雾岛寻丹·毒茹|雾岛寻丹·高阶兽丹|雾岛寻丹·贝壳|雾岛寻丹·零件|雾岛寻丹·木柴","是","<交任务物品1>")
公共_个人贡献积分跳转(100,'=','<公共积分完成1>')
条件跳转('任务未完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下1>')
条件跳转('任务已完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下完成1>')
跳转至标签('<江湖道远侠义天下1>')
<交任务物品1>
计时_初始化计时()
<交任务物品Ex1>
计时_时间秒数比较跳转(120,'是','<坐标二>')
寻路Ex(17692,21427,1049152,1)
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<交任务物品Ex1>')
NPC_对话('丹炉')
NPC_对话选项内容('C 放入身上的所有材料')
跳转至标签('<江湖道远侠义天下1>')

<江湖道远侠义天下完成1>
<公共积分完成1>
寻路Ex(17692,21427,1049152,1)
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<公共积分完成1>')
NPC_对话('丹炉')
NPC_对话选项内容('C 结算贡献')
延时(1000)
条件跳转('任务未完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下1>')
延时(1000)
跳转至标签('<公共日常完成>')
----------------- 坐标3 -----------------------------

<坐标三>
轻功寻路(16046,22611,1049664)
<没找到炉子2>
寻路Ex(16046,22611,1049664,1)
使用物品_等待读条("雾岛寻丹·丹炉")
使用物品_等待读条("雾岛寻丹·丹炉")
使用物品_等待读条("雾岛寻丹·丹炉")
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<没找到炉子2>')

<江湖道远侠义天下2>
清理_任务怪物('江湖道远侠义天下',16046,22611,1049664,40,'侠客岛_木材|侠客岛_兽皮|侠客岛_兽丹|侠客岛_毒茹|侠客岛_高阶兽丹|侠客岛_贝壳|侠客岛_丹炉零件|侠客岛_木柴',1,'黑蛇|木材|蝎|迷失的寻宝人|尸化的寻宝人')
背包_物品列表存在("雾岛寻丹·木材|雾岛寻丹·兽皮|雾岛寻丹·兽丹|雾岛寻丹·毒茹|雾岛寻丹·高阶兽丹|雾岛寻丹·贝壳|雾岛寻丹·零件|雾岛寻丹·木柴","是","<交任务物品2>")
公共_个人贡献积分跳转(100,'=','<公共积分完成2>')
条件跳转('任务未完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下2>')
条件跳转('任务已完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下完成2>')
跳转至标签('<江湖道远侠义天下2>')
<交任务物品2>
计时_初始化计时()
<交任务物品Ex2>
计时_时间秒数比较跳转(120,'是','<坐标三>')
寻路Ex(16046,22611,1049664,1)
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<交任务物品Ex2>')
NPC_对话('丹炉')
NPC_对话选项内容('C 放入身上的所有材料')
跳转至标签('<江湖道远侠义天下2>')

<江湖道远侠义天下完成2>
<公共积分完成2>
寻路Ex(16046,22611,1049664,1)
NPC_周边对话描述跳转('丹炉',20,'丹炉中的材料','否','<公共积分完成2>')
NPC_对话('丹炉')
NPC_对话选项内容('C 结算贡献')
延时(1000)
条件跳转('任务未完成跳转','手填NPC名','江湖道远侠义天下','<江湖道远侠义天下2>')
延时(1000)

跳转至标签('<公共日常完成>')
------------------ 结束 ----------------------------

<公共日常完成>
技能_技能冷却('神行千里','否','<技能没有冷却>')
<技能没有冷却>
寻路导航(35126,21470,1048960)
回复气力值()
寻路导航(30589,22491,1048832)
回复气力值()
<江湖道远侠义天下退出>
交通_寻路神行车夫('扬州',69086,62958,1052992,'卡点下线')
寻路(68350,62952,1052736)
完成任务('秘境任务','江湖道远侠义天下')