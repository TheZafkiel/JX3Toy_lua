--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '心固,深埋,昆吾,无意,狂歌,叠刃,切玉,负阴,和光,期声,无欲,玄门 有回蓝续航稳定 \n 心固,深埋,昆吾,无意,风逝,叠刃,切玉,负阴,和光,期声,无欲,玄门 无回蓝，全靠奶毒，输出较高'
--其他说明
ShuoMing = '自动补扶摇 自己跳 锈铁钩锁|景流.天地一|劈山尾鞭 读条50%会 ,输出会暂停3秒 \n 起手自动炸三个气场 ,需要吞日月请手动吞日月\n  起手未近战离目标十尺以外下气场后靠近boss，炸出云中剑马上靠近目标\n 心固,深埋,昆吾,无意,狂歌,叠刃,切玉,负阴,和光,期声,无欲,玄门 有回蓝续航稳定'

-- 扶摇状态 0 未起跳 1 起跳  3-顶点 二段 4准备小轻功
FYZT = 0 --'123'
FYZT_ARR_time = {} --起跳时间
--自动扶摇开关
ZD_FYZT = true
-- 暂停技能释放到某时间
ZD_ZT_TIME = time()

function Main()
   -- ZHIKONG_2()

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
    if nofight() and dis()>13 then
        if nobuff('9951') then
            cast('碎星辰', true)
        end
        if nobuff('374') then
            cast('生太极', true)
        end
        cast('吞日月', true)
        if last('吞日月', 8) and buff('9951') and buff('374') then
            cast('人剑合一', true)
        end
    end
    if fight() then
        if mana() < 0.45 and nobuff('2757') and qidian() < 8 then
            cast('化三清', true)
        end
    
        if buff('紫气东来') and tnombuff('叠刃') then
            cast('无我无剑')
        end
        if condition then
            -- statements
        end
    end
    --     fcast(357--[[化三清]] , (mp <= 45 and nobuff("2757"--[[紫气buff]]) and nav <= 8 ) and (state == stand or state == float) , "methrow")
  

    -- --起手未近战离目标十尺以外下气场后靠近boss，炸出云中剑马上靠近目标

    - 
    -- 	cast(八荒归元,fight and cdtime(2681)<2 and cdtime(588)<20 and npcnum("吞日月")==1)
    -- 	cast(人剑合一,npcnum("吞日月")==1 and npcdis("吞日月")<9 and nobuff(373) and cdtime(碎星辰)<1.5)
    -- 	cast(紫气东来,bufftime("14982")>7100 and bufftime("14982")<7500)
    -- 	cast(碎星辰,fight,nobuff(14982) and cdtime(人剑合一)>12.12,"me")
    -- --进入三气场之前的循环
    -- 	cast(碎星辰,fight,cdtime(人剑合一)<12.12 and cdtime(人剑合一)>10.68 and buff(14982),"me")
    -- --进入两气场之前的循环
    -- 	cast(碎星辰,fight,nobuff(9951) and nobuff(14934) or cdtime(人剑合一)>12.12 and nav<9,"me")
    -- --补充碎星辰
    -- 	cast(无我无剑,buff(14934) and nav>8)
    -- 	cast(八荒归元,fight,nobuff(14931))
    -- 	cast(无我无剑,buff(14931) and nav>8)
    -- 	cast(生太极,fight,nobuff(14931) and npcnum("碎星辰")==1,"me")
    -- 	cast(吞日月,fight,npcnum("生太极")==1 and nobuff(14931) and npcnum("吞日月")==0,"me")
    -- 	cast(吞日月,fight,nobuff(14931) and npcnum("吞日月")==0 and nav<9,"me")
    -- --完整云中剑循环
    -- 	cast(无我无剑,fight and nav>6)
    -- 	cast(八荒归元,fight)
    -- 	cast(三环套月,fight)
    -- --实在打不出其他技能时的补充
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
