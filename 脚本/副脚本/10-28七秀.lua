--七秀新人脚本()
等待_切换地图('七秀')
轻功(1)
延时(60)
轻功(0)
延时(600)
完成任务('碧儿','稻香一别寻师门')
接受任务('碧儿','龌龊人心')
<龌龊人心>
延时(1000)
条件跳转('任务未完成跳转','手填NPC名','龌龊人心','<龌龊人心>')
完成任务('碧儿','龌龊人心')
接受任务('碧儿','扬州秀坊')
轻功寻路(23053,8685,1056448)
轻功寻路(23053,10230,1056960)
轻功寻路(23053,12072,1057024)
完成任务('白依依','扬州秀坊')
接受任务('白依依','坊内欣荣')
轻功寻路(20081,11998,1057024)
轻功寻路(20111,12283,1057024)
完成任务('叶礼','坊内欣荣')
接受任务('叶礼','忆盈楼上')
等待_坐车()
轻功寻路(16227,13908,1072384)
寻路(15657,13895,1072384)
寻路(14992,13895,1072640)
完成任务('叶芷青','忆盈楼上')
接受任务('叶芷青','拜入七秀')
<拜入七秀>
NPC_对话('叶芷青')
NPC_对话选项(0)
延时(500)
NPC_对话选项(0)
延时(500)
NPC_对话选项Ex(0)
延时(500)
条件跳转('任务未完成跳转','叶芷青','拜入七秀','<拜入七秀>')
完成任务('叶芷青','拜入七秀')
接受任务('叶芷青','绮秀弟子')
寻路(15632,13903,1072384)
寻路(16615,13903,1071744)
寻路(16783,12981,1071744)
寻路(18066,12979,1067648)
寻路(18066,13283,1067648)
寻路(19216,13279,1063872)
寻路(19636,13929,1063872)
完成任务('金郁','绮秀弟子')
接受任务('金郁','七秀侠女')
NPC_任务对话完成('金郁','七秀侠女',0)
完成任务('金郁','七秀侠女')
接受任务('金郁','凌波微步')
等待_关闭动画()
寻路Ex(19610,14233,1063872,1)
完成任务('林玉筝','凌波微步')
接受任务('林玉筝','暗香掠影')
登顶大轻功(28913,16172,1057088,1097088,1)
轻功寻路(29928,17816,1060416)
完成任务('孙婆婆','暗香掠影')
接受任务('孙婆婆','秀坊来历')
NPC_任务对话完成('孙婆婆','秀坊来历')
完成任务('孙婆婆','秀坊来历')
接受任务('孙婆婆','识音断乐')
轻功寻路(30740,18846,1060992)
完成任务('惠芳','识音断乐')
接受任务('惠芳','钟鼓声声')
跳转至标签('<坐标距离签标855>')
<坐标距离签标856>
轻功二段跳(29707,20111,1055168)
寻路导航(30908,19066,1060992)
延时(1000)
<坐标距离签标855>
<钟鼓声声>
寻路Ex(30666,19246,1060736,1)
条件跳转('坐标>距离', '30638,19258,1060736,10', '3D', '<坐标距离签标856>')
交互()
条件跳转('任务未完成跳转','惠芳','钟鼓声声','<钟鼓声声>')
轻功寻路(30700,18911,1060992)
完成任务('惠芳','钟鼓声声')
接受任务('惠芳','星月画坊')
轻功寻路(31487,19388,1060992)
轻功寻路(33547,22401,1057280)
轻功寻路(33902,26592,1057344)
轻功寻路(33832,29547,1057664)
完成任务('安璇','星月画坊')
接受任务('安璇','拜见楚秀')
轻功寻路(33819,30286,1057792)
完成任务('萧白胭','拜见楚秀')
接受任务('萧白胭','五律五音')
NPC_任务对话完成('萧白胭','与萧白胭交谈',0)
寻路Ex(33689,30226,1057728,1)
<五律五音>
寻路Ex(33414,30218,1057728,1)
地面_选中物品交互('月琴')
条件跳转('任务已完成跳转','萧白胭','五律五音','<五律五音退出>')
地面_选中物品交互('笛子')
条件跳转('任务已完成跳转','萧白胭','五律五音','<五律五音退出>')
寻路Ex(34230,30226,1057728,1)
地面_选中物品交互('花鼓')
条件跳转('任务已完成跳转','萧白胭','五律五音','<五律五音退出>')
地面_选中物品交互('古琴')
条件跳转('任务已完成跳转','萧白胭','五律五音','<五律五音退出>')
地面_选中物品交互('古琴')
条件跳转('任务未完成跳转','萧白胭','五律五音','<五律五音>')
<五律五音退出>
寻路(33819,30286,1057792)
完成任务('萧白胭','五律五音')
接受任务('萧白胭','水云舞坊')
寻路(33919,29562,1057664)
<水云舞坊>
条件跳转('任务已完成跳转','曾琳琳','水云舞坊','<水云舞坊退出>')
NPC_寻路('安璇')
NPC_对话('安璇')
NPC_对话选项(0)
等待_坐车(nil,'<水云舞坊>')
<水云舞坊退出>
完成任务('曾琳琳','水云舞坊')
接受任务('曾琳琳','背包随行')
完成任务('曾琳琳','背包随行')
接受任务('曾琳琳','桃之夭夭')
<桃之夭夭>
寻路Ex(26461,29986,1056704,1)
任务_采集('桃之夭夭',26828,29579,1056640,15)
条件跳转('任务未完成跳转','曾琳琳','桃之夭夭','<桃之夭夭>')
轻功寻路(26484,30583,1056768)
轻功寻路(28600,31798,1057344)
完成任务('林忆如','桃之夭夭')
接受任务('林忆如','呦呦鹿鸣')
轻功寻路(27976,32102,1057344)
轻功寻路(27400,32495,1057408)
轻功寻路(26965,33451,1057344)
<呦呦鹿鸣>
清理_任务怪物('呦呦鹿鸣',26965,33451,1057344,20,'',1)
清理_任务怪物('呦呦鹿鸣',27917,33056,1057344,20,'',1)
条件跳转('任务未完成跳转','林忆如','呦呦鹿鸣','<呦呦鹿鸣>')
寻路导航(28600,31798,1057344)
完成任务('林忆如','呦呦鹿鸣')
接受任务('林忆如','薇秀回坊')
轻功寻路(29742,32558,1057152)
轻功寻路(30288,33065,1056960)
轻功寻路(30145,33401,1056960)
完成任务('王维林','薇秀回坊')
接受任务('王维林','归途生变')
寻路(30562,33279,1057024)
寻路(31390,34130,1056960)
<归途生变>
交通_坐马车(26,531)
条件跳转('任务未完成跳转','手填NPC名','归途生变','<归途生变>')
条件跳转('任务已完成跳转','手填NPC名','归途生变','<归途生变退出>')
交通_坐马车(31,526,0)
交通_坐马车(26,531)
<归途生变退出>
寻路(58504,18920,1056576)
完成任务('鹿无双','归途生变')
接受任务('鹿无双','无良匪寨')
NPC_任务对话完成('肖潇','无良匪寨')
完成任务('肖潇','无良匪寨')
接受任务('肖潇','礼物清单')
轻功寻路(58695,21814,1055612)
<无良匪寨>
寻路Ex(58695,21814,1055612,1)
交互()
条件跳转('任务未完成跳转','肖潇','礼物清单','<无良匪寨>')
轻功寻路(59952,20261,1058240)
轻功寻路(60387,19419,1058432)
轻功寻路(58831,18529,1056576)
轻功寻路(58661,18818,1056576)
完成任务('肖潇','礼物清单')
接受任务('肖潇','融会贯通')
<融会贯通>
升级奇穴()
升级_默认技能()
NPC_对话('肖潇')
NPC_对话选项(0)
延时(1000)
条件跳转('任务未完成跳转','肖潇','融会贯通','<融会贯通>')
完成任务('肖潇','融会贯通')
接受任务('肖潇','调查缘由')
轻功寻路(58901,18420,1056576)
轻功寻路(60549,19293,1058432)
完成任务('柳中川','调查缘由')
接受任务('柳中川','整理仪容')
<整理仪容>
寻路Ex(60972,18988,1058432,1)
NPC_全部修理('文菲菲','杂货')
条件跳转('任务未完成跳转','柳中川','整理仪容','<整理仪容>')
寻路(60744,19350,1058432)
完成任务('柳中川','整理仪容')
接受任务('柳中川','湖盐旧事')
NPC_任务对话完成('柳中川','湖盐旧事')
完成任务('柳中川','湖盐旧事')
接受任务('柳中川','藏污纳垢')
轻功寻路(59299,24605,1057728)
轻功寻路(58689,25440,1057280)
轻功寻路(58682,25461,1057216)
<藏污纳垢>
寻路Ex(58689,25440,1057280,1)
清理_身边怪物(30,1)
条件跳转('任务已完成跳转','柳中川','藏污纳垢','<藏污纳垢退出>')
条件跳转('任务未完成跳转','柳中川','藏污纳垢','<藏污纳垢>')
<藏污纳垢退出>
按角色是否进战跳转('否','<未进战>')
寻路Ex(59852,23631,1057600,1)
寻路Ex(61346,20026,1057472,1)
寻路Ex(60738,19466,1058496,1)
跳转至标签('<进战>')
<未进战>
轻功寻路(59852,23631,1057600)
轻功寻路(61346,20026,1057472)
轻功寻路(60738,19466,1058496)
<进战>
完成任务('柳中川','藏污纳垢')
接受任务('柳中川','坊中急召')
完成任务('王维林','坊中急召')
接受任务('王维林','试剑江山')
任务_试剑江山()
延时(3000)
寻路Ex(60598,19390,1058432,1)
完成任务('王维林','试剑江山')
接受任务('王维林','深入调查')
完成任务('柳中川','深入调查')
接受任务('柳中川','惩恶除奸')
轻功寻路(69055,23828,1064128)
轻功寻路(69214,22510,1064128)
完成任务('陈咏','惩恶除奸')
接受任务('陈咏','验明正身')
<验明正身>
<向陈咏出示海捕公文>
寻路Ex(69086,22464,1064128,1)
使用物品_等待读条('海捕公文')
条件跳转('支线任务未完成','向陈咏出示海捕公文','验明正身','<向陈咏出示海捕公文>')
NPC_任务对话完成('陈咏','验明正身')
条件跳转('任务未完成跳转','陈咏','验明正身','<验明正身>')
完成任务('陈咏','验明正身')
接受任务('陈咏','盐寨货运')
接受任务('陈咏','酒头领')
<酒头领>
if 取角色职业名字() == "七秀" then 技能_被动抢怪技能('酒头领|盐寨货运','是','/cast 江海凝光') end
清理_任务怪物('酒头领',70234,24281,1064064,20,'',1)
清理_任务怪物('盐寨货运',70412,24236,1064064,40,'',1)
清理_任务怪物('盐寨货运',70031,23443,1064064,40,'',1)
条件跳转('任务未完成跳转','陈咏','酒头领','<酒头领>')
条件跳转('任务未完成跳转','陈咏','盐寨货运','<酒头领>')
if 取角色职业名字() == "七秀" then 技能_被动抢怪技能('酒头领|盐寨货运','否','/cast 江海凝光') end
完成任务('陈咏','酒头领')
完成任务('陈咏','盐寨货运')
接受任务('陈咏','神秘老者')
轻功寻路(68893,24675,1064576)
轻功寻路(68992,26950,1067648)
<神秘老者>
清理_任务怪物('神秘老者',68651,27024,1067648,20,'',1)
条件跳转('任务未完成跳转','陈咏','神秘老者','<神秘老者>')
寻路(69603,27566,1067648)
完成任务('陶老汉','神秘老者')
接受任务('陶老汉','无盐旧事')
NPC_任务对话完成('陶老汉','无盐旧事')
完成任务('陶老汉','无盐旧事')
升级奇穴()
升级默认技能()
领取等级礼包()
接受任务('陶老汉','心急如焚')
轻功寻路(69565,26794,1067648)
轻功寻路(70502,27457,1068736)
完成任务('吴林原','心急如焚')
使用物品('粗布腰包')
接受任务('吴林原','恶贯满盈')
轻功寻路(69627,26970,1067648)
if 取角色职业名字() == "七秀" then 技能_被动抢怪技能('湖盐寨匪头','是','/cast 江海凝光') end
<恶贯满盈>
清理_任务怪物('恶贯满盈',69627,26970,1067648,30,'桃花村地契',1,'湖盐寨匪头')
条件跳转('任务未完成跳转','吴林原','恶贯满盈','<恶贯满盈>')
if 取角色职业名字() == "七秀" then 技能_被动抢怪技能('湖盐寨匪头','否','/cast 江海凝光') end
轻功寻路(70524,27427,1068736)
完成任务('吴林原','恶贯满盈')
接受任务('吴林原','结义当年')
轻功寻路(69680,26936,1067648)
轻功寻路(71892,25315,1067456)
if 取角色职业名字() == "七秀" then 技能_被动抢怪技能('甄坦财','是','/cast 江海凝光') end
<结义当年>
清理_任务怪物('结义当年',71892,25315,1067456,20,'陶承晖的弹弓',1,'甄坦财')
条件跳转('任务未完成跳转','吴林原','结义当年','<结义当年>')
if 取角色职业名字() == "七秀" then 技能_被动抢怪技能('甄坦财','否','/cast 江海凝光') end
寻路(69680,26936,1067648)
寻路(70560,27434,1068736)
完成任务('吴林原','结义当年')
接受任务('吴林原','浪子回头')
轻功寻路(71545,27655,1071232)
轻功寻路(71241,28509,1071168)
<浪子回头>
寻路Ex(71241,28509,1071168,1)
使用物品('陶承晖的弹弓')
延时(1000)
条件跳转('任务未完成跳转','吴林原','浪子回头','<浪子回头>')
完成任务('陶承晖','浪子回头')
延时(3000)
接受任务('陶承晖','千金不换')
寻路(70531,27503,1068736)
NPC_任务对话完成('吴林原','千金不换')
轻功寻路(71545,27655,1071232)
轻功寻路(71241,28509,1071168)
完成任务('陶承晖','千金不换')
接受任务('陶承晖','兄弟重逢')
<兄弟重逢>
战斗_清理身边怪物(20,1)
延时(1000)
条件跳转('任务未完成跳转','陶承晖','兄弟重逢','<兄弟重逢>')
完成任务('吴林原','兄弟重逢')
接受任务('吴林原','弥留之际')
NPC_任务对话完成('陶承晖','弥留之际')
完成任务('吴林原','弥留之际')
接受任务('吴林原','罪魁祸首')
接受任务('吴林原','消灭殆尽')
领取等级礼包()
升级奇穴()
升级默认技能()
使用玄九丸三次()
无BUFF使用物品('纵江湖','珍·风身丸')
轻功寻路(71280,28305,1071168)
轻功寻路(72578,28147,1073088)
<时间未超120秒跳转>
技能_被动抢怪技能('元大头','是','/cast 江海凝光')
计时_初始化计时()
<元大头>
清理_任务怪物('罪魁祸首',72964,27585,1073088,20,'',1,'元大头')
计时_时间秒数比较跳转(60,'是','<时间未超120秒跳转>')
条件跳转('支线任务未完成','元大头','罪魁祸首','<元大头>')
技能_被动抢怪技能('湖盐寨师爷','是','/cast 江海凝光')
<消灭殆尽>
清理_任务怪物('消灭殆尽',73842,25911,1073088,40,'',1,'湖盐寨师爷')
条件跳转('任务未完成跳转','手填NPC名','消灭殆尽','<消灭殆尽>')
技能_被动抢怪技能('湖盐寨师爷','否','/cast 江海凝光')
if 控制台_定制控制设置("禁止接受组队") then 队伍_禁止组队() else 队伍_允许组队() end
if 控制台_定制控制设置("禁止主动组队周边玩家") then 队伍_设置主动组队('否') else 队伍_设置主动组队('是') end
轻功寻路(72742,26381,1073088)
寻路(71882,27519,1073088)
寻路(71331,28133,1071168)
寻路Ex(71440,28099,1071168,1)
完成任务('吴林原','罪魁祸首')
完成任务('吴林原','消灭殆尽')
接受任务('吴林原','桃花叶落')
登顶大轻功(62018, 18316, 1057344,1077344,1)
寻路(60973,18080,1057600)
完成任务('陶老汉','桃花叶落')
接受任务('陶老汉','求助秀坊')
轻功寻路(60558,19284,1058432)
完成任务('王维林','求助秀坊')
接受任务('王维林','有所舍取')
轻功寻路(60895,19048,1058432)
NPC_卖物('文菲菲','杂货','损坏的水贼衣服',1)
轻功寻路(60474,19398,1058432)
完成任务('王维林','有所舍取')
接受任务('王维林','继续调查')
轻功寻路(59899,19857,1058432)
交通_坐马车(594,593)
登顶大轻功(65131,49810,1057600,1097600,1)
寻路Ex(65149,49660,1057728,1)
接受任务('明空星','策马驰骋')
完成任务('明空星','策马驰骋')
延时(1000)
使用物品('红鸣马')
延时(1000)
开礼包箱子('隐元秘宝·生皮鞍具')
延时(1000)
使用物品('生皮头饰')
延时(1000)
装备马匹('生皮头饰')
延时(1000)
装备马匹('生皮鞍饰')
延时(1000)
装备马匹('生皮足饰')
登顶大轻功(83013,51486,1062464,1092464,1)
寻路Ex(83462,51582,1062848,1)
完成任务('悦君','继续调查')
接受任务('悦君','甲鱼惊变')
NPC_任务对话完成('悦君','和悦君交谈')
轻功寻路(82952,50154,1062464)
轻功寻路(85696,48548,1063744)
任务_探听消息()
轻功寻路(82952,50154,1062464)
轻功寻路(83481,51500,1062848)
完成任务('悦君','甲鱼惊变')
接受任务('悦君','探查')
接受任务('悦君','歼灭')
领取等级礼包()
升级奇穴()
升级默认技能()
使用玄九丸三次()
无BUFF使用物品('纵江湖','珍·风身丸')
轻功寻路(82967,50360,1062464)
轻功寻路(86550,50609,1059840)
轻功寻路(87528,50731,1059904)
轻功寻路(87543,51601,1059648)
轻功寻路(86123,52469,1059456)
轻功寻路(86079,52935,1059712)
<搜查遇害的纯阳弟子遗体>
清理_身边怪物(5,3)
寻路Ex(86081,52966,1059712,1)
NPC_对话('纯阳弟子的尸体')
NPC_对话('纯阳弟子的屍体')
等待_读条()
条件跳转('支线任务未完成','搜查遇害的纯阳弟子遗体','探查','<搜查遇害的纯阳弟子遗体>')
<搜查遇害的霸刀弟子遗体>
寻路Ex(86062,52873,1059712,1)
清理_身边怪物(5,3)
NPC_对话('霸刀弟子的尸体')
NPC_对话('霸刀弟子的屍体')
等待_读条()
延时(1000)
NPC_对话选项(0)
延时(1000)
条件跳转('支线任务未完成','搜查遇害的霸刀弟子遗体','探查','<搜查遇害的霸刀弟子遗体>')
<搜查遇害的藏剑弟子遗体>
寻路Ex(86095,52671,1059712,1)
清理_身边怪物(5,3)
NPC_对话('藏剑弟子的尸体')
NPC_对话('藏剑弟子的屍体')
等待_读条()
条件跳转('支线任务未完成','搜查遇害的藏剑弟子遗体','探查','<搜查遇害的藏剑弟子遗体>')
轻功寻路(86037,52121,1059520)
轻功寻路(87991,53627,1059136)
<歼灭>
清理_任务怪物('歼灭',88645,53540,1059136,40,'',1)
清理_任务怪物('歼灭',89527,55361,1059456,40,'',1)
清理_任务怪物('歼灭',88013,55496,1058560,40,'',1)
清理_任务怪物('歼灭',87814,53744,1059136,40,'',1)
条件跳转('任务未完成跳转','悦君','歼灭','<歼灭>')
<歼灭退出>
轻功寻路(87740,53492,1059136)
轻功寻路(87886,48000,1063808)
轻功寻路(89920,46311,1064704)
NPC_任务对话完成('悦君','探查')
完成任务('悦君','探查')
完成任务('悦君','歼灭')
接受任务('悦君','追查下落')
接受任务('悦君','寒水弟子')
轻功寻路(91130,46622,1066240)
轻功寻路(94121,46622,1070592)
<寒水弟子>
清理_任务怪物('寒水弟子',93928,46550,1070400,50,'',1)
清理_任务怪物('寒水弟子',94604,49212,1070912,50,'',1)
条件跳转('任务未完成跳转','悦君','寒水弟子','<寒水弟子>')
轻功寻路(94647,49321,1070848)
轻功寻路(94973,49212,1070912)
NPC_任务对话完成('江嫣','追查下落')
完成任务('江嫣','追查下落')
完成任务('江嫣','寒水弟子')
使用物品('珍·风身丸')
接受任务('江嫣','水凝为冰')
轻功寻路(95319,50906,1071808)
轻功寻路(97572,51395,1075648)
轻功寻路(98059,52873,1075264)
NPC_寻找附近NPC对话('秋水',1,0)
延时(1000)
<打败秋水>
延时(1000)
清理_指定怪物('秋水')
条件跳转('支线任务未完成','打败秋水','水凝为冰','<打败秋水>')
<开启牢笼>
寻路Ex(98208,52970,1075008,1)
NPC_对话('凌雪牢笼')
等待_读条()
条件跳转('支线任务未完成','开启牢笼','水凝为冰','<开启牢笼>')
轻功寻路(97518,52601,1075712)
轻功寻路(97960,49576,1076864)
完成任务('兰汀','水凝为冰')
接受任务('兰汀','风花雪月')
接受任务('兰汀','飞花门徒')
轻功寻路(96920,48192,1076672)
<飞花门徒>
清理_任务怪物('飞花门徒',96939,48539,1076416,20,'',1)
清理_任务怪物('飞花门徒',97130,46460,1077568,40,'',1)
清理_任务怪物('飞花门徒',97334,44534,1078976,50,'',1)
条件跳转('任务未完成跳转','兰汀','飞花门徒','<飞花门徒>')
寻路导航(94094,43036,1080896)
回复血量()
<风花雪月>
NPC_对话选项连续对话控制('开')
寻路Ex(94094,43036,1080896,1)
NPC_对话('王梦花')
清理_任务怪物('打败王梦花',94099,43041,1080896,20,'',1,'王梦花')
条件跳转('任务未完成跳转','手填NPC名','风花雪月','<风花雪月>')
NPC_对话选项连续对话控制('关')
轻功寻路(91104,43835,1080832)
轻功寻路(90890,43582,1080832)
完成任务('潇荷','飞花门徒')
完成任务('潇荷','风花雪月')
接受任务('潇荷','镜像弟子')
轻功寻路(90626,44478,1080832)
轻功寻路(89582,44616,1080832)
轻功寻路(87253,44970,1080832)
清理_任务怪物('镜像弟子',87253,44970,1080832,40,'',1,'镜像弟子')
清理_任务怪物('镜像弟子',85384,45081,1080832,20,'',1,'镜像弟子')
清理_任务怪物('镜像弟子',83285,45081,1081792,20,'',1,'镜像弟子')
清理_任务怪物('镜像弟子',80220,45420,1085888,20,'',1,'镜像弟子')
清理_任务怪物('镜像弟子',79027,45296,1087744,20,'',1,'镜像弟子')
清理_任务怪物('镜像弟子',78331,43746,1089472,20,'',1,'镜像弟子')
清理_任务怪物('镜像弟子',78934,42541,1090368,20,'',1,'镜像弟子')
条件跳转('任务已完成跳转','悦君','镜像弟子','<镜像弟子完成>')
<镜像弟子>
清理_任务怪物('镜像弟子',79776,41704,1091584,40,'',1)
清理_任务怪物('镜像弟子',81452,42629,1091712,40,'',1)
条件跳转('任务未完成跳转','悦君','镜像弟子','<镜像弟子>')
<镜像弟子完成>
寻路导航(79299,40878,1091520)
完成任务('悦君','镜像弟子')
接受任务('悦君','真假难分')
回复血量()
任务_真假难分()
完成任务('悦君','真假难分')
接受任务('悦君','事出有因')
使用玄九丸三次()
无BUFF使用物品('纵江湖','珍·风身丸')
条件跳转('坐标<距离', '45661,57069,1057152,20', '3D', '<坐标距离签标529>')
轻功寻路(80187,40526,1091840)
暂停所有动作()
NPC_任务对话完成('叶芷青','事出有因')
完成任务('叶芷青','事出有因')
条件跳转('坐标<距离', '45661,57069,1057152,20', '3D', '<坐标距离签标529>')
使用物品('粗布腰包')
接受任务('叶芷青','内坊阴谋')
<坐标距离签标529>
等待_坐车()
轻功寻路(45952,57103,1057152)
NPC_任务对话完成('凤仪','内坊阴谋',0)
完成任务('凤仪','内坊阴谋')
接受任务('凤仪','内坊秘密')
NPC_任务对话完成('凤仪','内坊秘密')
完成任务('凤仪','内坊秘密')
接受任务('凤仪','狼狈为奸')
轻功寻路(47862,57095,1057472)
轻功寻路(49012,56653,1057472)
轻功寻路(49216,56587,1057536)
轻功寻路(52987,56604,1057728)
<放置杜鹃花>
寻路Ex(52670,56063,1057408,1)
使用物品_等待读条('杜鹃花')
条件跳转('支线任务未完成','放置杜鹃花','狼狈为奸','<放置杜鹃花>')
<找到接应人>
延时(1000)
条件跳转('支线任务未完成','找到接应人','狼狈为奸','<找到接应人>')
寻路Ex(52585,55958,1057408,1)
寻路Ex(52416,55977,1057408,1)
寻路Ex(52403,56235,1057536,1)
延时(1000)
<内坊密信>
寻路Ex(52403,56235,1057536,1)
任务_内坊密信()
条件跳转('支线任务未完成','内坊密信','狼狈为奸','<内坊密信>')
轻功寻路(52317,56388,1057536)
轻功寻路(53675,55827,1057728)
完成任务('凤仪','狼狈为奸')
接受任务('凤仪','深入调查')
轻功寻路(53871,55860,1057728)
轻功寻路(58480,55861,1057792)
完成任务('雀儿','深入调查')
接受任务('雀儿','细说因由')
NPC_任务对话完成('雀儿','细说因由')
完成任务('雀儿','细说因由')
条件跳转('等级', '=', '27', '<提前27结束跳转>')
接受任务('雀儿','告知秘密')
NPC_任务对话完成('雀儿','同雀儿分析阴谋')
回复气力值()
轻功寻路(59074,55882,1057728)
轻功寻路(58626,54473,1055488)
轻功寻路(55468,54272,1055488)
<玉殿清梧>
地面_选中物品交互('残缺的曲谱',55523,54324,1055552)
条件跳转('支线任务未完成','《玉殿清梧》第一章','告知秘密','<玉殿清梧>')
轻功寻路(58879,54058,1055424)
轻功寻路(58879,55968,1057728)
轻功寻路(58577,55862,1057856)
完成任务('雀儿','告知秘密')
接受任务('雀儿','获取曲谱')
<提前27结束跳转>
轻功寻路(62296,55908,1056768)
轻功寻路(64015,51909,1060008)
轻功寻路(63816,50809,1058368)
轻功寻路(62532,50276,1057600)
轻功寻路(62431,49199,1057600)
轻功寻路(61133,48325,1057600)
寻路Ex(61133,48325,1057600,1)
交通_坐马车(27,526,0)
轻功寻路(30813,33557,1056960)
轻功寻路(29304,32127,1057344)
轻功寻路(28960,32515,1057408)
寻路Ex(28960,32515,1057408,1)
交通_坐马车(576,1335,0)
寻路(23037,10569,1056960)
寻路(23037,8385,1055936)
寻路(22806,8049,1055936)
寻路Ex(22806,8049,1055936,1)
寻路Ex(22806,8049,1055936,1)
<扬州跳转标签>
NPC_对话选项连续对话控制('开')
NPC_对话('刘七')
延时(3000)
  等待_切换地图('扬州',180,'<扬州跳转标签>')
等待_坐车()
跳转至标签('<提前结束跳转>')
回复气力值()
轻功寻路(58965,55863,1057728)
上马轻功寻路(62094,55921,1056512)
轻功寻路(62340,56928,1056640)
轻功寻路(63472,58908,1057024)
轻功寻路(63703,60228,1056640)
轻功寻路(63221,60659,1058432)
轻功寻路(63457,60688,1058432)
轻功寻路(64135,60943,1058816)
<绝心碑>
寻路Ex(64135,60943,1058816,1)
地面_选中物品交互('绝心碑')
条件跳转('任务未完成跳转','雀儿','获取曲谱','<绝心碑>')
上马轻功寻路(63457,60688,1058432)
轻功寻路(63579,60424,1057792)
轻功寻路(63616,59054,1057216)
轻功寻路(61516,56907,1056384)
轻功寻路(59702,53671,1055173)
轻功寻路(58935,54157,1055488)
轻功寻路(58782,55839,1057728)
完成任务('雀儿','获取曲谱')
使用物品('珍·风身丸')
条件跳转('等级', '=', '28', '<提前结束跳转>')
<决定试一试>
接受任务('雀儿','决定一试')
寻路(58887,56206,1057728)
寻路(58802,56470,1057472)
寻路(59090,58313,1057472)
寻路(58775,59795,1057472)
<决定一试>
寻路Ex(58775,59795,1057472,1)
使用物品_等待读条('玉竹笛')
条件跳转('支线任务未完成','到幽月阁使用笛子','决定一试','<决定一试>')
计时_初始化计时()
计时_时间秒数比较跳转(180,'否','<时间未超180秒跳转七秀>')
<失败重接>
放弃任务('决定一试')
寻路(58767,59565,1057536)
寻路(59117,58235,1057536)
寻路(58776,56871,1057536)
轻功寻路(58960,56073,1057728)
轻功寻路(58642,55851,1057728)
跳转至标签('<决定试一试>')
<时间未超180秒跳转七秀>
<与李裹儿对质>
延时(1000)
计时_时间秒数比较跳转(180,'是','<失败重接>')
条件跳转('支线任务未完成','与李裹儿对质','决定一试','<与李裹儿对质>')
寻路(58804,59415,1057472)
寻路(59087,58219,1057536)
寻路(58758,56910,1057472)
寻路(58746,55863,1057728)
暂停所有动作()
完成任务('雀儿','决定一试')
接受任务('雀儿','回坊禀告')
NPC_对话('雀儿')
NPC_对话选项(0)
等待_坐车()
条件跳转('等级', '=', '28', '<提前结束跳转>')
寻路(14959,13884,1072576)
NPC_任务对话完成('叶芷青','回坊禀告')
完成任务('叶芷青','回坊禀告')
条件跳转('等级', '=', '28', '<提前结束跳转>')
接受任务('叶芷青','七秀剑诀')
<七秀剑诀>
延时(3000)
背包_阅读所有书籍()
条件跳转('任务未完成跳转','叶芷青','七秀剑诀','<七秀剑诀>')
完成任务('叶芷青','七秀剑诀')
接受任务('叶芷青','江海凝光')
<江海凝光>
延时(1000)
技能_学习秘籍('江海凝光','《西河剑器·江海凝光》真传残页')
延时(1000)
条件跳转('任务未完成跳转','叶芷青','江海凝光','<江海凝光>')
完成任务('叶芷青','江海凝光')
跳转至标签('<提前结束跳转>')
接受任务('叶芷青','大宴在即')
上马轻功寻路(16585,13896,1071744)
寻路(16487,12902,1071744)
轻功寻路(20132,12199,1057024)
寻路(20672,11987,1057536)
寻路(21805,11953,1056960)
寻路(21799,10726,1056960)
交通_坐马车(1335,587,0)
上马轻功寻路(25142, 33687, 1057408)
上马轻功寻路(25312, 33976, 1057344)
完成任务('雪凝','大宴在即')
接受任务('雪凝','传情达意')
<传情达意>
NPC_对话选项(0)
条件跳转('任务未完成跳转','雪凝','传情达意','<传情达意>')
上马轻功寻路(23020,34004,1057408)
轻功寻路(21000,34967,1057536)
寻路(20583,35246,1057472)
完成任务('欧阳云书','传情达意')
--跳转至标签('<提前结束跳转>')
接受任务('欧阳云书','借花敬佛')
上马轻功寻路(22213,34290,1057472)
轻功寻路(22479,33164,1057408)
寻路Ex(21982,32712,1057728,1)
寻路Ex(21307,32172,1057664,1)
寻路Ex(21157,31755,1057728,1)
寻路Ex(20572,31287,1057664,1)
完成任务('珠儿','借花敬佛')
接受任务('珠儿','细说前因')
NPC_任务对话完成('珠儿','细说前因')
完成任务('珠儿','细说前因')
使用物品('粗布腰包')
接受任务('珠儿','双凤分飞')
寻路Ex(21224,31880,1057728,1)
寻路Ex(21360,32169,1057664,1)
寻路Ex(22067,32804,1057664,1)
轻功寻路(22517,33425,1057344)
轻功寻路(22749,34091,1057408)
轻功寻路(23531,34037,1057408)
轻功寻路(23575,36280,1057280)
NPC_任务对话完成('碧儿','双凤分飞')
完成任务('碧儿','双凤分飞')
接受任务('碧儿','神女有心，襄王无梦')
NPC_任务对话完成('碧儿','神女有心，襄王无梦')
完成任务('碧儿','神女有心，襄王无梦')
接受任务('碧儿','情殇难平')
等待_坐车()
<情殇难平>
延时(1000)
条件跳转('任务未完成跳转','碧儿','情殇难平','<情殇难平>')
寻路(8898,48700,1058112)
完成任务('雪凝','情殇难平')
接受任务('雪凝','人命关天')
轻功寻路(10605,48375,1060864)
<人命关天>
清理_任务怪物('鹿茸',12042,47271,1058688,40,'鹿茸')
清理_任务怪物('鹿茸',10901,45933,1058816,40,'鹿茸')
清理_任务怪物('鹿茸',9987,44809,1059648,40,'鹿茸')
清理_任务怪物('鹿茸',8940,43846,1060480,40,'鹿茸')
清理_任务怪物('鹿茸',9987,44809,1059648,40,'鹿茸')
条件跳转('支线任务未完成','鹿茸','人命关天','<人命关天>')
<人命关天退出>
上马轻功寻路(11965,47011,1058624)
轻功寻路(13981,48796,1056960)
轻功寻路(16144,49822,1055936)
轻功寻路(18773,52253,1055936)
轻功寻路(20016,53101,1056000)
<龟甲>
清理_任务怪物('人命关天',22453,51429,1056704,40,'龟甲',1,'西湖水龟')
清理_任务怪物('人命关天',23888,53141,1056448,40,'龟甲',1,'西湖水龟')
条件跳转('支线任务未完成','龟甲','人命关天','<龟甲>')
轻功寻路(20016,53101,1056000)
登顶大轻功(26014,41902,1056000,1086000,1)
寻路Ex(26122,40853,1057280,1)
完成任务('冰遥','人命关天')
跳转至标签('<提前结束跳转>')
接受任务('冰遥','为时已晚')
寻路Ex(26123,41813,1056192,1)
登顶大轻功(33585, 25196, 1057216,1087664,1,50)
轻功寻路(33922,26786,1057344)
轻功寻路(33922,29287,1057280)
寻路Ex(33820,29966,1057792)
<为时已晚>
延时(1000)
条件跳转('任务未完成跳转','萧白胭','为时已晚','<为时已晚>')
完成任务('萧白胭','为时已晚')
接受任务('萧白胭','情为何物？')
上马轻功寻路(33867,29030,1057280)
寻路(33881,23168,1057216)
任务_情为何物()
接受任务('萧白胭','不灭凤凰')
接受任务('萧白胭','门主之令')
轻功寻路(33339,21896,1057280)
轻功寻路(33161,21213,1057216)
交通_坐马车(1334,587)
轻功寻路(22633,34045,1057472)
轻功寻路(20550,35227,1057472)
NPC_任务对话完成('欧阳云书','门主之令')
轻功寻路(23021,33843,1057408)
寻路(23269,34136,1057408)
交通_坐马车(587,588,0)
上马轻功寻路(13832, 48588, 1057152)
轻功寻路(12192,47274,1058560)
轻功寻路(10709,48757,1061376)
轻功寻路(11448,49264,1062656)
轻功寻路(12031,49877,1064256)
<不灭凤凰>
寻路Ex(12031,49877,1064256,1)
地面_选中物品交互('双凤碑')
延时(1000)
NPC_对话选项(0)
等待_读条()
条件跳转('任务未完成跳转','萧白胭','不灭凤凰','<不灭凤凰>')
上马轻功寻路(11380, 49152, 1062528)
轻功寻路(10860,47273,1059200)
轻功寻路(12323,46965,1058688)
轻功寻路(14521,46957,1055872)
轻功寻路(14595,48543,1056064)
交通_坐马车(588,1334)
上马轻功寻路(33765,24083,1057216)
轻功寻路(33889,26570,1057280)
轻功寻路(33882,30098,1057856)
完成任务('萧白胭','不灭凤凰')
完成任务('萧白胭','门主之令')
接受任务('萧白胭','出坊游历')
轻功寻路(33889,26570,1057280)
轻功寻路(33765,24083,1057216)
轻功寻路(33280,21319,1057216)
交通_坐马车(1334,1335)
寻路(22429,10504,1056896)
回复气力值()
登顶大轻功(16192, 12924, 1071744,1091744,1,50)
上马轻功寻路(16884, 13555, 1071744)
寻路(16355,13949,1072128)
寻路(15646,13890,1072384)
寻路(14979,13890,1072640)
完成任务('叶芷青','出坊游历')
接受任务('叶芷青','名师高徒')
NPC_任务对话完成('叶芷青','名师高徒')
完成任务('叶芷青','名师高徒')
接受任务('叶芷青','扬州故人')
<提前结束跳转>
设置_运行脚本指定地图('否','七秀|稻香秘事|拭剑园战场')