队伍_设置主动组队([[否]])
if 背包_统计物品数量([[辉光流影]]) == 20 then
	自定义账号状态(string.format([[%s辉光流影满20个]],时间_取今天日期()))
	延时(8000)
	结束游戏()
end
交通_寻路神行车夫([[扬州]],68731,63114,1052928,[[卡点下线]])
寻路Ex(68713,63228,1052928,1)
接受任务([[蒋玉凤]],[[回光溯影]])
延时(1000)
完成任务([[蒋玉凤]],[[回光溯影]])
延时(1000)
自定义账号状态(string.format([[%s辉光流影完成]],时间_取今天日期()))
自定义账号状态([[勾选]],0)
延时(8000)
结束游戏()