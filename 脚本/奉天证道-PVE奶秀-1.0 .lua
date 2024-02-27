--作者
ZuoZhe = "Zafkiel"
--奇穴
QiXue = ""
--秘籍
MiJi = "无"
--其他说明
ShuoMing = " "



function Main()
   DPS()
end
function DPS()

--如果在马上,下马
	if horse() then
		cbuff("骑御")
	end
	if qidian() == 0 then
		cast("名动四方", true)
end	
	
--半血天地
	if life() < 0.5 and fight() then
		cast("天地低昂", true)
	end
	
	
 if life() >= 0.75 and not (target('npc')) then
        settar(teamp('视线可达', '气血大于:0.01', '距离小于:20', '气血最少'))
    else
        if not (state('跳跃')) and not (target('npc')) then
            settar(id())
        end
    end
	
    if (fight() and ttlife() < 0.99) or ttlife() < 0.8 then
        if (state('走路') or state('跑步')) and tlife() < 0.6 and not (notarget()) then
            cast('余寒映日')
        end

        --  走路开御寒映日
        if (tlifec() < 99999 or tlife() < 0.5) and (cd('风袖低昂') and cd('王母挥袂')) then
            cast('余寒映日')
        end
        --  and (cd("风袖低昂") and cd("王母挥袂"))
        if (tlifec() < 99999 or tlife() < 0.3) then
            cast('繁音急节')
        end
        -- 优先 拯救濒危队友
        if tlifec() < 99999 or tlife() < 0.5 then
            cast('王母挥袂')
        end
        if tlifec() < 99999 or tlife() < 0.5 then
            cast('风袖低昂')
        end
        --,"气血小于:0.3","距离小于:20"))
        -- 如果自己血量足够 才是用平摊 不然暴毙
        -- 优先翔舞 然后风袖 [王母挥袂][风袖低昂]

        -- xcast("王母挥袂", )

        --[翔舞][]
        if nobuff('上元点鬟') then
            cast('上元点鬟', true)
        end
        if nobuff('翔舞') then
            cast('翔鸾舞柳', true)
        end
        if tnombuff('上元点鬟') and tlife() > 0.5 then
            cast('上元点鬟')
        end
        if tnombuff('翔舞') and tlife() > 0.5 then
            cast('翔鸾舞柳')
        end
        if (tlifec() > 50000 and tlife() > 0.3 and tmbuff('上元点鬟')) or (cd('风袖低昂') and cd('王母挥袂')) then
            cast('回雪飘摇')
        end
    end

    --视线可达 没上元 上上元
    xcast('上元点鬟', teamp('视线可达', '距离小于:20', '没buff:上元点鬟', '气血大于:0.01', '内力小于:0.5'))
    xcast('上元点鬟', teamp('视线可达', '距离小于:20', '没buff:上元点鬟', '气血小于:0.95', '气血大于:0.02'))
    xcast('翔鸾舞柳', teamp('视线可达', '距离小于:20', '没buff:翔舞', '气血大于:0.01', '气血小于:0.9'))	
	
end