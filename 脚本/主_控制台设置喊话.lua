function 喊话_开始(喊话开关,喊话频道,喊话内容)
	local 喊话间隔配置 = 控制台配置_读文本("控制台","喊话间隔")
	local 喊话间隔 = 15
	local fn = (function (b,c)
		-- 返回最新的五百条记录,如果不足五百条,则按实际数量返回来
		local myTable = 聊天记录_数组()
		local k,v
		for k,v in ipairs(myTable) do
			if v and lua_GetTickCount() -  v.dwTickCount <= 2*60 *1000 then
				-- 只找最近1分钟内的记录
				if b == v.szTalkType then
					if string.find(v.szText,c) ~= nil  then
						return true
					end
				end
			end
		end
		return false
	end)
	if 喊话间隔配置 ~= '' then
		喊话间隔 = tonumber(喊话间隔配置) or 15
	else
		喊话间隔 = 15
	end
	local ChannelList = {
	["附近"] = true,
	["地图"] = true,
	["世界"] = true,
	["阵营"] = true,
	["门派"] = true,
	["队伍"] = true,
	}
	喊话频道 = string.sub(喊话频道,0,4)
	if 喊话开关 == '1' and ChannelList[喊话频道] and string.len(喊话内容) > 0 then
		聊天(喊话频道,喊话内容)
		延时(500)
		if fn("系统","发言次数已经用完") or fn("系统","未付费账号无法使用聊天频道") then
		   return true
		end
		延时(喊话间隔 * 1000)
	end
	return false
end
function 喊话_读配置设置()
	local a = 控制台配置_读文本("控制台","喊话勾选一")
	local b = 控制台配置_读文本("控制台","喊话勾选二")
	local c = 控制台配置_读文本("控制台","喊话勾选三")
	local d = 控制台配置_读文本("控制台","喊话勾选四")
	if a == '' and b == '' and c == '' and d == '' then
		OutputMessage("请在控制台-定制代练2-进行喊话设置")
		结束脚本()
		return false
	end
	local a1 = 控制台配置_读文本("控制台","喊话频道一")
	local b1 = 控制台配置_读文本("控制台","喊话频道二")
	local c1 = 控制台配置_读文本("控制台","喊话频道三")
	local d1 = 控制台配置_读文本("控制台","喊话频道四")
	
	local a2 = 控制台配置_读文本("控制台","喊话内容一")
	local b2 = 控制台配置_读文本("控制台","喊话内容二")
	local c2 = 控制台配置_读文本("控制台","喊话内容三")
	local d2 = 控制台配置_读文本("控制台","喊话内容四")
	if 喊话_开始(a,a1,a2) or 喊话_开始(b,b1,b2) or 喊话_开始(c,c1,c2) or 喊话_开始(d,d1,d2) then return false end
	return true
end
function 自动喊话初始化()
	while true do
		if not 喊话_读配置设置() then
		   自定义账号状态("发言次数已经用完!!")
		   自定义账号状态("勾选",0)
		   延时(8000)
		   结束游戏()
		end
		延时(200)
	end
end
队伍_设置主动组队('否')
自动喊话初始化()