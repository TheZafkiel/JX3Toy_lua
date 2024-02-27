--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '青梅嗅,千里冰封,新妆,青梅,枕上,生莲,望舒,元君,霜风,朝露,琼宵/[夜天],霜降'
--其他说明
ShuoMing = '自动补扶摇 自己跳 \n 琼宵 距离记得10尺 \n[夜天]  '

-- 扶摇状态 0 未起跳 1 起跳  3-顶点 二段 4准备小轻功
FYZT = 0 --'123'
FYZT_ARR_time = {} --起跳时间
--自动扶摇开关
ZD_FYZT = true
-- 暂停技能释放到某时间
ZD_ZT_TIME = time()

function Main()
     -- ZHIKONG_2()
    
    if totaprog() > 0.5 and tota('锈铁钩锁|景流.天地一|劈山尾鞭') then
        suspension(3000)
        FYZT = 0
        jump_1()
    end

    if  isRun() then
     
        DPS()
    end
end

function DPS()
    if   nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end
    if tnombuff("急曲") or tmbuffsn("急曲")<=3 or tmbufftime("急曲")<=3 then
       cast("剑破虚空")
    end
    if tmbuffsn("急曲")>=2 and tmbufftime("急曲")>=5 then
       cast("繁音急节")
    end

    if dis() <=10 and nobuff("剑神无我") and qixue("琼宵") then
       cast("婆罗门",true)
    end
    if  qixue("夜天") then
      cast("剑气长江")
    end
    cast("玳弦急曲")
  
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
