--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '[白虹][心固][化三清*必点][归元][同尘][跬步][万物][抱阳][浮生][心眼][自化][固本]'
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
    -- statements
    if fight() and nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end
    if not (rela('敌对')) or dis() > 23 then --目标为敌对/自我重伤/目标距离大于20尺/GCD保护，暂停运行
        return 1
    end
    if qidian() > 8 or last('四象轮回', 1.5) then
        cast('两仪化形')
    end
    if nobuff('破苍穹' --[[破苍穹抱阳]]) or nolast('破苍穹', 36) then
        fcast('破苍穹', true)
    end

    if nobuff('12783' --[[气剑5段]]) then
        fcast('万世不竭', true)
    end
    --     fcast(18983--[[万世二段]] , buff("12783"--[[气剑5段]]) and bufftime("12783"--[[气剑5段]]) <= 3100 )
    if buff('12783' --[[气剑5段]]) and bufftime('12783' --[[气剑5段]]) <= 3 then
        cast('万世不竭')
    end

    --     fcast(15193--[[剑出鸿蒙]] , (npcnum("58294"--[[剑出鸿蒙气场]]) == 0 or npcdis("58294"--[[剑出鸿蒙气场]]) > 7 or casttime(15193--[[剑出鸿蒙]]) >= 36000) and (state == stand or state == float) , "methrow")

    -- if buff("9964"--[[破苍穹抱阳]]) and casttime(359--[[破苍穹]]) < 36000 and bufftime("12783"--[[气剑5段]]) > 3100 and casttime(15193--[[剑出鸿蒙]]) < 36000 then

    --     fcast(2681--[[紫气东来]] , nobuff("2757"--[[紫气buff]])  and casttime(359--[[破苍穹]]) <= 24000 )
    if nobuff('2757' --[[紫气buff]]) and last('破苍穹',24) then
        cast('紫气东来', true)
    end
    --     fcast(355--[[凭虚御风]],bufftime("2757"--[[紫气buff]]) > 5000 or cdtime(2681--[[紫气东来]]) > 30 )
    if bufftime('2757' --[[紫气buff]]) > 5 then
        cast('凭虚御风', true)
    end
    --     fcast(18668--[[六合独尊]] , "throw")
    cast('六合独尊')
    --     fcast(357--[[化三清]] , (mp <= 45 and nobuff("2757"--[[紫气buff]]) and nav <= 8 ) and (state == stand or state == float) , "methrow")
    if mana() < 0.45 and nobuff('2757') and qidian() < 8 then
        cast('化三清', true)
    end
 
    if state('站立') then
        cast('四象轮回')
    end
    cast('太极无极')
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
