--作者
ZuoZhe = "Zafkiel"
--奇穴
QiXue = '朝露,盛夏,辞致,瑰姿,乞巧,散余霞,晚晴,碎冰,霜风,秋深,垂眉,余寒映日'
--奇穴[余寒映日]/[九微飞花]都能用
--其他说明
--已修改为jx3toy参数
ShuoMing = '无'
function Main()
   xiuchi()
    if life() >= 0.75 and not (target('npc')) then
        settar(player('视线可达', '气血>0.01', '距离<20', '气血最少', '关系:友好'))
    else
        if not (state('跳跃')) and not (target('npc')) then
            settar(id())
        end
    end


    if (fight() and tlife() < 0.99) or tlife() < 0.8 then
        --if (state('走路') or state('跑步')) and tlife() < 0.6 and not (notarget()) then
        if (state('走路') or state('跑步')) and tlife() < 0.6 and not (notarget()) and qixue("余寒映日") then
            cast('余寒映日')
        end

        --  走路开御寒映日
        --if (tlifevalue() < 58888 or tlife() < 0.5) and (scdtime('风袖低昂') ~= 0 and scdtime('王母挥袂')  ~= 0 ) then
        if (tlifevalue() < 58888 or tlife() < 0.5) and (cdtime('风袖低昂') ~= 0 and cdtime('王母挥袂')  ~= 0 ) and qixue("余寒映日") then
            cast('余寒映日')
        end
        --  and (cd("风袖低昂") and cd("王母挥袂"))
        if (tlifevalue() < 58888 or tlife() < 0.3) and tlife() > 0 then
            cast('繁音急节')
        end
        -- 优先 拯救濒危队友
        if (tlifevalue() < 38888 or tlife() < 0.5) and tlife() > 0 then
            cast('王母挥袂')
        end
        if (tlifevalue() < 38888 or tlife() < 0.5) and tlife() > 0 then
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
        if tnobuff('上元点鬟', id()) and tlife() > 0.5 then
            cast('上元点鬟')
        end
        if tnobuff('翔舞', id()) and tlife() > 0.5 then
            cast('翔鸾舞柳')
        end
        if (tlifevalue() > 18888 and tlife() > 0.3 and tbuff('上元点鬟', id())) or (cdtime('风袖低昂') ~= 0 and cdtime('王母挥袂') ~= 0 ) then
            if casting() == false then
            cast('回雪飘摇')
            else
            end
        end

    end

    --视线可达 没上元 上上元
    -- if  enemyp("读条百分比:技能名|技能名|技能名>0.5", "buff类别:可打断")
    -- xcast("剑飞惊天", enemyp("读条百分比:技能名|技能名|技能名>0.5", "buff类别:可打断"))
    xcast('上元点鬟', player('视线可达', '距离<20', '我的buff时间:上元点鬟<0', '气血>0.01', '内力<0.5', '关系:友好'))
    xcast('上元点鬟', player('视线可达', '距离<20', '我的buff时间:上元点鬟<0', '气血>0.95', '气血>0.02', '关系:友好'))
    xcast('翔鸾舞柳', player('视线可达', '距离<20', '我的buff时间:翔舞<0', '气血>0.01', '气血<0.9', '关系:友好'))

-----------------------

-----------------------

end

-----------------------
function xiuchi()
    --附近大于3个队友血不满0.70则使用[九微飞花] 具体参数看打什么本
    if qixue("九微飞花") then
        local playerId, playerCount = party('视线可达', '距离<20', '气血>0.01', '气血<0.70', '关系:友好')
        --if playerCount >= 3 or player('视线可达', '距离<20', '气血>0.01', '气血<0.30', '关系:友好') then
        --风袖王母cd 抢救单个濒危队友  如果不需要就和上下替换
        if playerCount >= 3 or (party('视线可达', '距离<20', '气血>0.01', '气血<0.30', '关系:友好') and cdtime('风袖低昂') ~= 0 and cdtime('王母挥袂')  ~= 0) then
            xcast(24990, party('视线可达', '距离<20', '气血>0.01', '关系:友好', '气血最少'))
        end
        else
    end
end
-----------------------
