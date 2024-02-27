ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴", "奶咕咕" },
{ "秘籍", "常规秘籍" },
{ "说明", "没商角上buff 有buff刷宫" },
{ "说明2", "勾哪队奶哪队" },
}

addopt("给1队刷hot", true)
addopt("给2队刷hot", true)
addopt("给3队刷hot", true)
addopt("给4队刷hot", true)
addopt("给5队刷hot", true)

function Main()
   DPS()
end
function DPS()

--切姿态		
	if state("站立") and pose("高山流水") then
		fcast("阳春白雪")
		end
	if state("走路|跑步") and pose("阳春白雪") then
		fcast("高山流水")	
		end
--结束	

local meidun = teamp("没状态:重伤", "距离小于:20", "视线可达")

--获取队友
--如果有，启用了,释放技能 

	if meidun and getopt("给1队刷hot") then
		settar(teamp("小队:1","没状态:重伤", "距离小于:20", "视线可达","气血最少"))
		end	
	if tnobuff("商") then
        cast("商")
    end
	if tnobuff("角") then
        cast("角")
    end
	if tnobuff("角") or tnobuff("商") then
	   settar(teamp("小队:1","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	end
	if tbuff("角") or tbuff("商") and pose("阳春白雪")	then
        cast("宫")
	end 	
	if ota("宫") and pose("阳春白雪") then
		fcast("阳春白雪")
	end	
	if tbuff("角") or tbuff("商") and pose("高山流水")	then
        cast("变宫")
	end 
	xcast('宫', teamp("小队:1","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	xcast('变宫', teamp("小队:1","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
--

	if meidun and getopt("给2队刷hot") then
		settar(teamp("小队:2","没状态:重伤", "距离小于:20", "视线可达","气血最少"))
		end	
	if tnobuff("商") then
        cast("商")
    end
	if tnobuff("角") then
        cast("角")
    end
	if tnobuff("角") or tnobuff("商") then
	   settar(teamp("小队:2","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	end
	if tbuff("角") or tbuff("商") and pose("阳春白雪")	then
        cast("宫")
	end 	
	if ota("宫") and pose("阳春白雪") then
		fcast("阳春白雪")
	end	
	if tbuff("角") or tbuff("商") and pose("高山流水")	then
        cast("变宫")
	end 
	xcast('宫', teamp("小队:2","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	xcast('变宫', teamp("小队:2","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
--

	if meidun and getopt("给3队刷hot") then
		end	
	if tnobuff("商") then
        cast("商")
    end
	if tnobuff("角") then
        cast("角")
    end
	if tnobuff("角") or tnobuff("商") then
	   settar(teamp("小队:3","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	end
	if tbuff("角") or tbuff("商") and pose("阳春白雪")	then
        cast("宫")
	end 	
	if ota("宫") and pose("阳春白雪") then
		fcast("阳春白雪")
	end	
	if tbuff("角") or tbuff("商") and pose("高山流水")	then
        cast("变宫")
	end 
	xcast('宫', teamp("小队:3","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	xcast('变宫', teamp("小队:3","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
--

	if meidun and getopt("给4队刷hot") then
		settar(teamp("小队:4","没状态:重伤", "距离小于:20", "视线可达","气血最少"))
		end	
	if tnobuff("商") then
        cast("商")
    end
	if tnobuff("角") then
        cast("角")
    end
	if tnobuff("角") or tnobuff("商") then
	   settar(teamp("小队:4","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	end
	if tbuff("角") or tbuff("商") and pose("阳春白雪")	then
        cast("宫")
	end 	
	if ota("宫") and pose("阳春白雪") then
		fcast("阳春白雪")
	end	
	if tbuff("角") or tbuff("商") and pose("高山流水")	then
        cast("变宫")
	end 
	xcast('宫', teamp("小队:4","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	xcast('变宫', teamp("小队:4","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
--

	if meidun and getopt("给5队刷hot") then
		settar(teamp("小队:5","没状态:重伤", "距离小于:20", "视线可达","气血最少"))
		end	
	if tnobuff("商") then
        cast("商")
    end
	if tnobuff("角") then
        cast("角")
    end
	if tnobuff("角") or tnobuff("商") then
	   settar(teamp("小队:5","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	end
	if tbuff("角") or tbuff("商") and pose("阳春白雪")	then
        cast("宫")
	end 	
	if ota("宫") and pose("阳春白雪") then
		fcast("阳春白雪")
	end	
	if tbuff("角") or tbuff("商") and pose("高山流水")	then
        cast("变宫")
	end 
	xcast('宫', teamp("小队:5","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
	xcast('变宫', teamp("小队:5","没状态:重伤", "距离小于:20", "视线可达","有buff:角|商"))
--


end