--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '[朝露][盛夏][辞致][瑰姿][乞巧][散余霞][晚晴][碎冰][霜风][秋深][垂眉][余寒映日]'
--其他说明
ShuoMing = '自动补扶摇 自己跳 锈铁钩锁|景流.天地一|劈山尾鞭 读条50%会 ,输出会暂停3秒'

-- 扶摇状态 0 未起跳 1 起跳  3-顶点 二段 4准备小轻功
FYZT = 0 --'123'
FYZT_ARR_time = {} --起跳时间
--自动扶摇开关
ZD_FYZT = true
-- 暂停技能释放到某时间
ZD_ZT_TIME = time()

function Main()
    --  ZHIKONG_2()

    if isRun() then
        if totaprog() > 0.5 and tota('锈铁钩锁|景流.天地一|劈山尾鞭') then
            suspension(3000)
            FYZT = 0
            jump_1()
        end
        DPS()
    end
end

function DPS()
    if nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end
    
  
    if (fight() and ttlife() < 0.99) or ttlife() < 0.8 then
        if (state('走路') or state('跑步')) and tlife() < 0.6 and not (notarget()) then
            cast('余寒映日')
        end

        --  走路开御寒映日
        if (tlifec() < 58888 or tlife() < 0.5) and (cd('风袖低昂') and cd('王母挥袂')) then
            cast('余寒映日')
        end
        --  and (cd("风袖低昂") and cd("王母挥袂"))
        if (tlifec() < 58888 or tlife() < 0.3) then
            cast('繁音急节')
        end
        -- 优先 拯救濒危队友
        if tlifec() < 38888 or tlife() < 0.5 then
            cast('王母挥袂')
        end
        if tlifec() < 38888 or tlife() < 0.5 then
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
        if (tlifec() > 18888 and tlife() > 0.3 and tmbuff('上元点鬟')) or (cd('风袖低昂') and cd('王母挥袂')) then
            cast('回雪飘摇')
        end
    end

    --视线可达 没上元 上上元
    -- if  enemyp("读条百分比:技能名|技能名|技能名>0.5", "buff类别:可打断")
    -- xcast("剑飞惊天", enemyp("读条百分比:技能名|技能名|技能名>0.5", "buff类别:可打断"))
    xcast('上元点鬟', teamp('视线可达', '距离小于:20', '没buff:上元点鬟', '气血大于:0.01', '内力小于:0.5'))
    xcast('上元点鬟', teamp('视线可达', '距离小于:20', '没buff:上元点鬟', '气血小于:0.95', '气血大于:0.02'))
    xcast('翔鸾舞柳', teamp('视线可达', '距离小于:20', '没buff:翔舞', '气血大于:0.01', '气血小于:0.9'))
end

-- 是否暂停
function isRun(arg1, arg2, arg3)
    return time() >= ZD_ZT_TIME
end
-- 暂停 T 毫秒
function suspension(t)
    ZD_ZT_TIME = t + time()
end

-- 一段跳
function jump_1(params)
    if FYZT == 0 then
        -- statements
        FYZT = 1
        FYZT_ARR_time[1] = time()
        jump()
    end
    if FYZT == 2 then
        -- statements
        FYZT_ARR_time[2] = time()
        jumpf()
        FYZT = 3
    end
    if FYZT == 4 then
        FYZT_ARR_time[3] = time()
        cast('蹑云逐月')
        cast('凌霄揽胜')
        cast('瑶台枕鹤')
        cast('迎风回浪')
        FYZT = 5
    end
    if FYZT == 6 then
        -- statements
        jump()
        FYZT = 7
    end
end

--[[***
  滞空 
**--]]
function ZHIKONG_2(xqg)
    -- print('FYZT',FYZT, FYZT_ARR_time[2], time())
    -- if FYZT_ARR_time[3] then
    --     print('FYZT', FYZT, FYZT_ARR_time[2], time())
    --     print(
    --         FYZT == 5 and time() - FYZT_ARR_time[3] >= 700 and time() - FYZT_ARR_time[3] <= 2500,
    --         time(),
    --         FYZT_ARR_time[3]
    --     )
    -- end

    -- 保持滞空
    if state('跳跃') and last('扶摇直上', 30) and nobuff('弹跳') and jumpc() == 1 and FYZT_ARR_time[1] == nil then
        FYZT_ARR_time[1] = time()
        FYZT = 1.5
        if isRun() then
            suspension(4000)
        end
    end
    if
        state('跳跃') and last('扶摇直上', 30) and nobuff('弹跳') and jumpc() == 1 and --FYZT == 1 and
            ((FYZT == 1 and time() - FYZT_ARR_time[1] >= 1600 and time() - FYZT_ARR_time[1] <= 1900) or
                (FYZT == 1.5 and time() - FYZT_ARR_time[1] >= 1000 and time() - FYZT_ARR_time[1] <= 1900))
     then
        FYZT = 2
        jump_1()
    end

    if
        state('跳跃') and last('扶摇直上', 30) and nobuff('弹跳') and jumpc() == 2 and
            (FYZT == 3 and time() - FYZT_ARR_time[2] >= 600 and time() - FYZT_ARR_time[2] <= 1500)
     then
        FYZT = 4
        jump_1()
    end

    if (FYZT_ARR_time[3] and FYZT == 5 and time() - FYZT_ARR_time[3] >= 1300 and time() - FYZT_ARR_time[3] <= 2500) then
        FYZT = 6
        jump_1()
    end

    if not (state('跳跃')) and jumpc() == 0 then
        FYZT = 0
        FYZT_ARR_time = {}
    end
end
