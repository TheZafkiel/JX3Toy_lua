--作者
ZuoZhe = "Zafkiel"
--奇穴
QiXue = ""
--其他说明
ShuoMing = "测试"






function Main()
   test()
   richang()
end



-----------------------------------------------------------
function test()
    --烂柯山挂机用(浩气id，恶人没测)
	local DOODADID1 = doodad("模板ID:9980", "表现ID:49183")
	local DOODADID2 = doodad("模板ID:10005", "表现ID:49184")
	local DOODADID3 = doodad("模板ID:9981", "表现ID:49182")
	if bufftime("洞天一线") >= 0 and DOODADID1 ~= 0 then
		bigtext("有翔，有buff 等待中", 1)
		else
		if bufftime("洞天一线") >= 0 and DOODADID2 ~= 0 then
			bigtext("有翔，有buff 等待中", 1)
			else
			if bufftime("洞天一线") >= 0 and DOODADID3 ~= 0 then
				bigtext("有翔，有buff", 1)
			end
		end
	end

	if nobuff("洞天一线") and DOODADID1 ~= 0 then
		interact(DOODADID1)
		bigtext("有翔快去摸", 1, 3)
		else
		if nobuff("洞天一线") and DOODADID2 ~= 0 then
			interact(DOODADID2)
			bigtext("有翔快去摸", 1, 3)
			else
			if nobuff("洞天一线") and DOODADID3 ~= 0 then
				interact(DOODADID3)
				bigtext("有翔快去摸", 1, 3)
			end
		end
	end


end


function richang()
    --阵营日常
    --找个没敌对的服务器挂机自动摸翔（浩气的 恶人没测试）
    local shitid = doodad("模板ID:9988", "表现ID:46405", "距离<6", "有任务", "距离最近")
    local carshit1 = doodad("模板ID:9759", "表现ID:45360", "距离<6")
    --车的翔
    local carid = npc("关系:友好", "名字:浩气盟物资车")
    --local carid = npc("关系:友好", "名字:恶人谷物资车")

    if shitid ~= 0 then
        interact(shitid)
    end
    --if npc("关系:友好", "名字:恶人谷物资车") and map("跨服·烂柯山") and carid ~= 0 then
    if npc("关系:友好", "名字:浩气盟物资车") and map("跨服·烂柯山") and carid ~= 0 then
    settar(carid)
    follow()
    end


end










function follow()
    local carshit2 = doodad("模板ID:9759", "表现ID:45360", "距离<6")
--跟随npc
if
 face() > 45
 then
 turn(0)
end
--大于5向前
if
dis() > 5
then
movef(true)
turn(0)
end

if
 dis() <= 5
then
movef(false)
turn(0)
end

if carid ~= 0 and carshit2 ~= 0 then
print(carshit2)
interact(carshit2)
--跟车阶段结束
bigtext("有翔快去摸", 1, 3)
    if carid == 0 and carshit2 ~= 0 then
    moveto(91049, 13617, 1063104)
    bigtext("车已到站", 1, 3)
    interact(carshit2)
    end
end




end