-- 4个六级石头花了 1200 精力，金币 2100 1级石头 2600个()
-- 不能用绑定的五行石存在背包
条件跳转('是否金币','<','186','<合成五行石退出>')
交通_寻路神行车夫('太原',15119,61397,1143104,'卡点下线')
个人仓库_存物('蒋不归','五行石（一级）|五行石（二级）|五行石（三级）|五行石（四级）|五行石（五级）|五行石（六级）',1)
寻路Ex(15091,60560,1143104,1)
NPC_威望帮贡买物('曾鑫','五行石','五行石（一级）',200,2800,8,8,7500)
延时(1000)
精炼_快速合成五行石("五行石（三级）",68)
延时(1000)
精炼_普通合成五行石("五行石（六级）",五行石点卡区合成方案)
<合成五行石退出>