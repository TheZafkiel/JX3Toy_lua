--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '孤漠,归酣,阳关,霜天,含风,砺锋,分疆,星火,楚歌,绝期,重烟,心境'
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
    print(sun(),energy(),rage())
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
    cast('雷走风切')
    cast('上将军印')
    if bufftime('尘身') < 1.05 then
        fcast('停止释放')
    end
    if bufftime('上将军印') > 2 and energy() > 9 then
        cast('雪絮金屏')
    end
    if energy() < 10 or rage() < 5 then
        cast('龙骧虎步')
    end
    if tnombuff("闹须弥") then
        cast('闹须弥')
    end
   
    cast('雷走风切')
    if  energy() > 20 then
        cast('秀明尘身')
    end
    if  energy() < 19 or rage()<5 then
        cast('龙骧虎步')
    end
  
 
    cast('坚壁清野')
    if bufftime("上将军印") <1.75 or nobuff("上将军印") or energy()<5 then
        cast('秀明尘身')
    end
  
    cast('刀啸风吟')
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
