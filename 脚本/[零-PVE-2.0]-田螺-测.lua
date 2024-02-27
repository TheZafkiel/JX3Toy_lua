--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '[毒手尊拳][劫数难逃][弩击急骤][千机之威][千机巨搫][聚精凝神][化血迷心][蚀肌化血][秋风散影][回肠荡气][曙色催寒][雷甲三铉]'
--其他说明
ShuoMing = '  自动补扶摇 自己跳 \n 如果愿意的话， 手动爆发 鬼斧神工 心无自动开鬼斧'

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

ACSJ = 0
function DPS()
    if   nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end
    if target() and nofight() and ACSJ < 3 then
        cast('暗藏杀机')
        ACSJ = ACSJ + 1
    end
    if last('千机变', 2) then
        cast('连弩形态')
        LVGJ = time()
    end
    if nobuff('千机之威') then
        cast('千机变',true)
        LVGJ = nil
    end
    if fight() then
        cast('攻击')
        if buff('心无旁骛') then
            cast('鬼斧神工')
        end
        -----输出循环
        if tnombuff('化血') or tmbufftime('化血') < 4 and dis() < 19 then
            cast('天女散花')
        end
        if nolast('暗藏杀机', 3) then
            cast('暗藏杀机')
            ACSJ = ACSJ + 1
        end
        if ACSJ >= 3 then
            cast('图穷匕见')
            ACSJ = 0
        end

        cast('天绝地灭')
        if tmbufftime('化血') > 15 then
            cast('暴雨梨花针')
        end

        if tmbufftime('化血') > 4 then
            cast('蚀肌弹')
        end
        cast("孔雀翎")
        cast('天女散花')
    end
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
