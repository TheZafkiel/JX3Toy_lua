--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '贴膜流派：蔚风 秋鸿 争簇 殊曲 谪仙 平吟 笙簧 绝唱 相依 庄周梦 掷杯 桑柔。奶血流派：蔚风 秋鸿 争簇/枕流 殊曲 谪仙 自赏 寸光阴 兼山 相依 棋宫 掷杯 无尽藏'
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
    if notarget() or target('boss') then
        settar(teamp('距离小于:20'))
    end
    if buff('孤影化双') then
        cast('疏影横斜', true)
        cast('云生结海', true)
    end
    if buff('孤影化双') and bufftime('孤影化双') <= 1 then
        fcast('孤影化双')
    end
    if cn('疏影横斜') == 3 then
        cast('移形换影')
        cast('疏影横斜', true)
    end
    if qixue('无尽藏') then
        fcast('阳春白雪')
    end

    if qixue('自赏') and qixue('寸光阴') then
        if tmbuff('角') and tmbuff('商') then
            cast('宫')
            if tlife() > 0.95 and last('宫', 2) and not tid('尹青羲') then
                settar(teamp('距离小于:20', '气血最少', '气血大于:0.01', '我的buff层数:角>0'))
            end
        end
        if tnombuff('角') then
            cast('角')
        end
        if tnombuff('商') then
            cast('商')
        end
    end
    if nolast('角', 15) then
        cast('角')
    end
    if kuaitaixue == 1 and qixue('谪仙') then
        settar(teamp('气血最少', '距离小于:20'))
        kuaitaixue = 0
    end
    if tstate('重伤') then
        settar(teamp('不是目标', '距离小于:20'))
    end
    if tlife() < 0.93 and otaprog('徵') < 0.34 and qixue('谪仙') then
        fcast('徵')
        kuaitaixue = 1
    end
    if dis() > 20 then
        settar(teamp('没buff:梅花三弄|落梅', '距离小于:20'))
    end
    if tlifec() > 150000 and tnombuff('角') then
        cast('角')
    end
    if tmbuff('梅花三弄') or tmbuff('落梅') then
        settar(teamp('没buff:梅花三弄|落梅', '距离小于:20'))
        if dis() > 20 then
            settar(teamp('距离小于:20'))
        end
    end

    if tnombuff('梅花三弄') and tnombuff('落梅') and qixue('庄周梦') then
        cast('梅花三弄')
    end
    cast('羽')
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
