--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '[弹指][雪中行][倚天][焚玉][青歌][青冠][清流][雪弃][生息][梦歌][踏歌][涓流]'
--其他说明
ShuoMing =
    '自动补扶摇 自己跳 秘籍搭配\n阳明指：? ?运功时间 x 2 ， 伤害 4% ，会心 3%\n商阳指：?? 招式效果 x 2 ,??  效果持续时间 + 1 ， 施展范围 x 1\n兰摧玉折：调息时间 x 2 ， 效果持续时间 + 3 ， 运功时间 - 0.25\n钟林毓秀：运功时间 x 3 ， 效果持续时间 + 3?\n芙蓉并蒂：招式效果 x 1 ,??  伤害 5% ，伤害 4%\n快雪时晴：招式效果 x 1 ,?  ?伤害 4% ，伤害 3% ，伤害 5%\n'

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

H_T = 1
function DPS()
    -- print("H_T",H_T)
    if nofight() then
        if nobuff('清心静气') then
            cast('清心静气', true)
        end
        H_T = 1
    end
    if mana() < 0.4 then
        cast('碧水滔天', true)
    end

    if nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end
    -- if isme()  then
    --     cast('水月无间', true)
    -- end
    if nocd('乱洒青荷') then
        H_T = 1
    end
    if H_T == 1 then
        cast('乱洒青荷')
        if cd('乱洒青荷') then
            cast('水月无间', true)
        end
        if tnombuff('兰摧玉折') and (bufftime('乱洒青荷') >= 8 or cd('乱洒青荷')) then
            cast('阳明指')
        end
        if tnombuff('商阳指') then
            cast('商阳指')
        end
        if tbuff('兰摧玉折') and tbuff('钟林毓秀') then
            cast('玉石俱焚')
        end

        if last('玉石俱焚', 3) then
            H_T = 2
        end
    end
    if H_T == 2 then
        if tnombuff('兰摧玉折') then
            cast('兰摧玉折')
        end
        if tnombuff('商阳指') then
            cast('商阳指')
        end
        if tnombuff('钟林毓秀') and tmbufftime('商阳指') >= 11 then
            cast('钟林毓秀')
        end

        cast('快雪时晴')

        if last('快雪时晴', 3) and tmbuff('钟林毓秀') then
            H_T = 3
        end
    end
    if H_T == 3 then
        if tmbufftime('兰摧玉折') < 4 or tmbufftime('钟林毓秀') < 4 then
            cast('芙蓉并蒂')
        end
        if nocd('芙蓉并蒂') then
            cast(' 快雪时晴')
        end
        if tmbufftime('兰摧玉折') < 9 then
            cast('玉石俱焚')
        end
        if cd('玉石俱焚') or tnombuff('钟林毓秀') then
            H_T = 2
        end
        cast('快雪时晴')
    end

    -- _____________________________________________________________________________________________________
    -- 宏2：主循环，补3DOT之后打第一个快雪就按宏3
    -- /cast [tnobuff:兰摧玉折] 兰摧玉折
    -- /cast [tnobuff:商阳指] 商阳指
    -- /cast [tnobuff:钟林毓秀&tbufftime:商阳指>17] 钟林毓秀
    -- /cast 快雪时晴
    -- _____________________________________________________________________________________________________
    -- 宏3：宏2挂完DOT读第一个快雪就可以用宏3了，宏3会自动释放芙蓉并蒂和玉石俱焚，玉石俱焚释放完，目标身上没有DOT了，按宏2，宏2补DOT打快雪按宏3，循环……

    -- /cast [tbufftime:兰摧玉折<4|tbufftime:钟林毓秀<4] 芙蓉并蒂
    -- /cast [skill_notin_cd:芙蓉并蒂] 快雪时晴
    -- /cast [tbufftime:兰摧玉折<9] 玉石俱焚
    -- /cast 快雪时晴
    -- _____________________________________________________________________________________________________
    -- --如果加速不足994，请把/cast [tbufftime:兰摧玉折<9] 玉石俱焚 中的9改为13
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
