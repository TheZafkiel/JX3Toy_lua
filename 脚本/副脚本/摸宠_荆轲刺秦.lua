交通_寻路神行车夫('长安城',63490,47937,1121920,'卡点下线')
寻路Ex(63427,46740,1121920,1)
寻路Ex(61036,46610,1125504,1)
<长安西市>
寻路Ex(57622,46570,1125504,1,5000)
寻路Ex(56937,46582,1125952,1,5000)
延时(2000)
NPC_对话选项Ex(0)
延时(5000)
条件跳转('坐标>距离', '26686,50210,1052096,20', '3D', '<长安西市>')
寻路Ex(26432,50174,1052096,1)
寻路Ex(26658,47745,1052096,1)
寻路Ex(26658,45503,1052096,1)
寻路Ex(24891,45282,1052096,1)
寻路Ex(19251,45282,1052096,1)
寻路Ex(18112,45294,1052096,1)
寻路Ex(18136,46149,1052096,1)
<黑刺客>
寻路Ex(17813,46064,1052032,1)
NPC_对话('九隆神丐')
延时(1000)
NPC_对话选项(0)
延时(1000)
NPC_对话选项(0)
延时(1000)
NPC_对话选项(0)
延时(1000)
时间_今天进度累计('黑刺客','今天')
条件跳转('角色配置_数值比较','黑刺客|今天|3','>','<黑刺客>')
寻路Ex(18177,46484,1052096,1)
寻路Ex(18301,50197,1052096,1)
<长安大街>
寻路Ex(26528,50197,1052096,1)
寻路Ex(27003,50197,1052096,1)
NPC_对话选项Ex(0)
延时(5000)
条件跳转('坐标>距离', '57656,46571,1125504,20', '3D', '<长安大街>')
寻路Ex(63462,46543,1121920,1)
寻路Ex(62716,47547,1121984,1)