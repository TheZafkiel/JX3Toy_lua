<跳出五行天地外>
交通_寻路神行车夫('五台山',126087,77850,1092160,'卡点下线')
寻路(126414,77564,1093056)
延时(1000)
NPC_对话('副本入口')
交通_边境切换地图(2420228)
延时(1000)
<等队伍集合>
延时(500)
队伍_队员是否在相同地图(nil,'否','<等队伍集合>')
寻路(5339,7439,1063296)
寻路(5972,7594,1063040)
寻路(5871,7057,1063744)
扶摇蹑云(6379,6582)
寻路(7243,6327,1060736)
寻路(7963,6786,1060608)
寻路(8448,7270,1061824)
寻路(9367,8003,1062144)
寻路(9932,8892,1063104)
寻路(10061,9191,1063680)
扶摇蹑云(10201,9821)
<正在冷却中>
延时(1000)
技能_技能冷却('扶摇直上','是','<正在冷却中>')
技能_技能冷却('扶摇直上','否','<继续使用扶摇聂云>')
<继续使用扶摇聂云>
扶摇蹑云(10104,10568)
寻路(9759,11040,1068800)
寻路(9247,11582,1068864)
寻路(9146,13045,1069888)
寻路(9154,13957,1072832)
寻路(9154,15382,1075008)
寻路(9154,16943,1075008)
<等队伍集合2>
延时(1000)
队伍_队员是否在相同地图(nil,'否','<等队伍集合2>')
队伍_等待队员到达身边(5,'否','<等队伍集合2>')
寻路Ex(9172,17392,1075008,1)
<有队员未满血>
打坐()
延时(1000)
队伍_全部队员是否满血('否','<有队员未满血>')
延时(500)
跳跃()
延时(500)
跳跃()
选中目标('悟影')
<清理悟影>
转向坐标(9164,17475)
宏命令行("/xcast [treadingbai:达摩捏诀] 躲避,悟影,背面,3")
技能_使用职业技能()
怪物_是否存在跳转("悟影",99,"是","<清理悟影>")
回复血量()
寻路(10204,17663,1075008)
寻路(11132,17846,1074944)
清理_指定怪物('一刀流刺客',14,9999)
寻路(12005,17919,1073408)
寻路(12746,17954,1073600)
清理_指定怪物('一刀流刺客',14,9999)
寻路(13803,17954,1075456)
寻路(14903,17932,1078208)
清理_指定怪物('一刀流刺客',14,9999)
寻路(15421,17947,1079744)
清理_指定怪物('一刀流刺客',14,9999)
扶摇蹑云(17627,19008)
寻路(16785,19599,1084864)
寻路(17345,19661,1085760)
战斗_清理身边怪物(6,8)
NPC_对话('试炼僧人')
延时(300)
NPC_对话选项(0)
延时(300)
NPC_对话选项(0)
延时(300)
NPC_对话选项(1)
延时(300)
NPC_对话选项(0)
延时(300)
NPC_对话选项(0)
寻路(16760,20128,1085120)
寻路(16696,21194,1085888)
寻路(16494,22429,1086080)
战斗_清理身边怪物(6,8)
寻路(16210,24177,1086080)
寻路(17030,24354,1086080)
<等队伍集合3>
延时(500)
队伍_等待队员到达身边(5,'否',<'等队伍集合3'>)
队伍_队员是否在相同地图(nil,'否','<等队伍集合3>')
<有队员未满血2>
打坐()
延时(1000)
队伍_全部队员是否满血('否','<有队员未满血2>')
延时(500)
跳跃()
延时(500)
跳跃()

<前往梵空禅院参悟双雄剑意>
寻路Ex(17030,24354,1086080,1)
选中目标('王者剑意')
<清理王者剑意>
转向坐标(17074,24438)
技能_使用职业技能()
怪物_是否存在跳转("王者剑意",99,"是","<清理王者剑意>")
寻路Ex(16323,24405,1086080,1)
选中目标('圣者剑意')
<清理圣者剑意>
转向坐标(16190,24440)
技能_使用职业技能()
怪物_是否存在跳转("圣者剑意",99,"是","<清理王者剑意>")
条件跳转('支线任务已完成','前往梵空禅院参悟双雄剑意','跳出五行天地外','<前往梵空禅院参悟双雄剑意退出>')
<前往梵空禅院参悟双雄剑意退出>
条件跳转('支线任务未完成','前往梵空禅院参悟双雄剑意','跳出五行天地外','<前往梵空禅院参悟双雄剑意>')
延时(6000)
队伍_离开队伍()
等待_过图读条()
延时(6000)
交通_寻路神行车夫('阴山大草原',60831,64099,1081216,'卡点下线')
轻功寻路(59546,62239,1081536)
轻功寻路(58290,60021,1078912)
轻功寻路(59592,57535,1078080)
NPC_对话('祁进')
NPC_对话选项(0)
延时(1000)
完成任务('祁进','跳出五行天地外')
延时(1000)
接受任务('祁进','气化九脉生万物')
下马()
使用物品('百年毒蝎的内丹')
延时(15000)
自定义账号状态('勾选',0)
延时(8000)
结束游戏()