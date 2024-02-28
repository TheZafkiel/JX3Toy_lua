--作者
ZuoZhe = "Zafkiel"
--奇穴
QiXue = ""
--其他说明
ShuoMing = "测试"
function Main()
   test()
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
				bigtext("有翔，有buff 等待中", 1)
			end
		end
	end

	if nobuff("洞天一线") and DOODADID1 ~= 0 then
		interact(DOODADID1)
		else
		if nobuff("洞天一线") and DOODADID2 ~= 0 then
			interact(DOODADID2)
			else
			if nobuff("洞天一线") and DOODADID3 ~= 0 then
				interact(DOODADID3)
			end
		end
	end


end