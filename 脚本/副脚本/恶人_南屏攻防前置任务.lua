条件跳转('地图跳转', '南屏山', '默认', '<南屏山175>')
放弃任务('捷足先登营基奠')
放弃任务('高手如林!')
放弃任务('齐心协力击破天')
放弃任务('众擎易举执令歼')
放弃任务('灭此朝食两村连')
交通_寻路神行车夫('南屏山',10834,73066,1096000,'卡点下线')
<南屏山175>
寻路导航(10834,73066,1096000)
寻路Ex(11599,72462,1096192,1)
<继续等1>
延时(1000)
自定义账号状态("前置等待12点开启")
if 时间_取今天时间差(7,0,0) < 0 then 跳转至标签('<二点未到7点跳转>') end
时间_按时间差跳转(12,1,0,"否","<继续等1>")
<二点未到7点跳转>
<完成1>
接受所有任务('何非笑')
延时(1000)
查找_警告信息_等待('你当前可接任务数量已满',10,'是','<满任务>')
任务_是否存在('捷足先登营基奠','否','<完成1>')
任务_是否存在('灭此朝食两村连','否','<完成1>')
任务_是否存在('齐心协力击破天','否','<完成1>')
任务_是否存在('众擎易举执令歼','否','<完成1>')
任务_是否存在('高手如林!','否','<完成1>')
寻路导航(25603,59032,1096640)
寻路Ex(26174,58045,1097600,1)
登顶大轻功(50436,43924,1058240,1144016,1)
条件跳转('坐标<距离', '50421,43926,1057920,4', '3D', '<坐标距离签标881>')
扶摇二段跳(50421,43926,1057920)
<坐标距离签标881>
打坐()
NPC_等待出现在坐标附近('方超',50123,43967,1054784,50,'<高手如林!22>')
<高手如林!22>
采集_原地快速采集('是','方超的信物')
<找不到尸体跳转>
打坐()
延时(1000)
尸体_存在跳转('方超的信物',50,'否','<找不到尸体跳转>')
尸体_寻路('方超的信物')
<高手如林!>
寻路Ex(50083,44036,1054784,1)
采集_原地快速采集('是','方超的信物')
尸体_拾取指定怪物('方超的信物',50)
条件跳转('任务未完成跳转','手填NPC名','高手如林!','<高手如林!>')
轻功寻路(49298,44453,1054016)
轻功寻路(47676,42901,1053952)
轻功寻路(46194,40060,1052544)
上马轻功寻路(44136,39341,1051392)
上马轻功寻路(42028,39154,1050240)
上马轻功寻路(39422,36267,1051776)
上马轻功寻路(35251,34436,1052096)
上马轻功寻路(33400,34249,1051200)
上马轻功寻路(30660,31456,1056632)
上马轻功寻路(25373,30874,1072448)
上马轻功寻路(22745,27670,1080064)
上马轻功寻路(20687,24587,1080128)
上马轻功寻路(19294,24412,1078848)
<一分钟未满10人跳转>
队伍_允许组队()
队伍_根据聊天内容组队('地图|附近|阵营','齐心协力击破天|郭左|众擎易举执令歼',1,0,'<齐心协力击破天>',10,1,'<一分钟未满10人跳转>')
<齐心协力击破天>
清理_任务怪物('齐心协力击破天',19294,24412,1078848,20,'',1)
条件跳转('任务未完成跳转','手填NPC名','齐心协力击破天','<齐心协力击破天>')
寻路(19946,23394,1076736)
寻路(19406,22339,1073600)
寻路(16692,20651,1069184)
<一分钟未满10人跳转2>
队伍_设置主动组队('是')
队伍_根据聊天内容组队('地图|附近|阵营','齐心协力击破天|郭左|众擎易举执令歼',1,0,'<众擎易举执令歼>',10,1,'<一分钟未满10人跳转2>')
<众擎易举执令歼>
清理_任务怪物('众擎易举执令歼',16874,20897,1069184,50,'',1,'郭海宾')
条件跳转('任务未完成跳转','手填NPC名','众擎易举执令歼','<众擎易举执令歼>')
条件跳转('任务已完成跳转','手填NPC名','灭此朝食两村连','<灭此朝食两村连退出>')
队伍_设置主动组队('否')
寻路(17970,21394,1069568)
寻路Ex(18885,21686,1071360,1)
<灭此朝食两村连>
清理_任务怪物('灭此朝食两村连',18869,21790,1071552,20,nil,nil,'正力堂风护卫')
条件跳转('任务未完成跳转','手填NPC名','灭此朝食两村连','<灭此朝食两村连>')
<灭此朝食两村连退出>
寻路Ex(17276,21277,1068992,1)
寻路Ex(17504,22009,1067072,1)
寻路Ex(18203,23293,1061248,1)
寻路Ex(16504,25126,1047424,1)
寻路Ex(15740,30028,1047552,1)
<捷足先登营基奠>
任务_水下采集('捷足先登营基奠',17291,32156,1047424,30,'河底的沙石','<捷足先登营基奠完成>')
任务_水下采集('捷足先登营基奠',17029,35299,1046928,30,'河底的沙石','<捷足先登营基奠完成>')
任务_水下采集('捷足先登营基奠',21364,36635,1046881,30,'河底的沙石','<捷足先登营基奠完成>')
任务_水下采集('捷足先登营基奠',16961,35247,1046883,30,'河底的沙石','<捷足先登营基奠完成>')
条件跳转('任务未完成跳转','手填NPC名','捷足先登营基奠','<捷足先登营基奠>')
<捷足先登营基奠完成>
寻路导航(17475,28779,1047872)
上马轻功寻路(22016,33767,1048064)
上马轻功寻路(25365,34272,1048064)
上马轻功寻路(30111,34078,1049088)
上马轻功寻路(33927,34210,1051776)
上马轻功寻路(36449,34837,1052224)
上马轻功寻路(40381,36901,1051904)
上马轻功寻路(42567,39532,1049856)
上马轻功寻路(45204,38986,1052160)
上马轻功寻路(45349,36521,1057088)
上马轻功寻路(46045,34775,1062592)
上马轻功寻路(47230,34762,1065792)
上马轻功寻路(50298,36049,1074240)
上马轻功寻路(48268,31111,1074688)
上马轻功寻路(48354,27108,1074752)
上马轻功寻路(50859,22343,1076096)
上马轻功寻路(53102,17493,1080512)
上马轻功寻路(54624,13772,1088960)
上马轻功寻路(56120,9342,1095808)
上马轻功寻路(56666,6944,1098368)
<完成>
完成所有任务('何非笑')
任务_是否存在('捷足先登营基奠','是','<完成>')
任务_是否存在('灭此朝食两村连','是','<完成>')
任务_是否存在('齐心协力击破天','是','<完成>')
任务_是否存在('众擎易举执令歼','是','<完成>')
任务_是否存在('高手如林!','是','<完成>')
<满任务>