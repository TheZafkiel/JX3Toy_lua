--作者
ZuoZhe = 'YUI'
--奇穴
QiXue = '明妃/青梅嗅，千里冰封，新妆，青梅，枕上，生莲/长依，望舒，元君，霜风，朝露，琼霄/夜天，霜降。'
--其他说明
ShuoMing = '自动补扶摇 自己跳 锈铁钩锁|景流.天地一|劈山尾鞭 读条50%会 ,输出会暂停3秒 单怪还是群怪自己更换下奇穴就好,手动梵音\n必备秘籍 \n玳弦急曲：3伤害 \n繁音急节：3调息，1双会\n 副本用 跳跃自动接 小轻功 保持滞空 注意挂扶摇'

 
-- 扶摇状态 0 未起跳 1 起跳  3-顶点 二段 4准备小轻功
FYZT = 0 --'123'
FYZT_ARR_time = {} --起跳时间
--自动扶摇开关
ZD_FYZT = true
-- 暂停技能释放到某时间
ZD_ZT_TIME = time()

function Main()
  
   -- ZHIKONG_2()
    print(totaprog())
    if isRun() then
        if totaprog() > 0.5  and tota('熊！熊！熊！|摧城枪·神机|摧城枪·碎骨') then
            jump()
         end
         DPS()
    end
   
end

function DPS()
    
    if nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end

    -- 不是剑舞姿态 剑舞
    if qidian() == 0 then
        cast('名动四方')
    end
    if nocd('剑气长江') then
        cast('剑气长江')
    end
    -- /cast 繁音急节
    if nocd('剑破虚空') and tmbufftime('急曲') < 4 then
        fcast('剑破虚空')
    end
    cast('玳弦急曲')
end

function OnPrepare(dwCasterID, szSkillName, dwLevel, nLeftFrame, dwTargetID)
    if dwCasterID ~= id() then
        print('OnPrepare 开始读条', dwCasterID, szSkillName, dwLevel, nLeftFrame, dwTargetID)
    end
    --     4－锈铁钩锁：全屏扩散的大红圈（同姐妹花红圈），扶摇起空中接二段接小轻功再
    -- 接空格，保证红圈消失前持续滞空
    if szSkillName == '锈铁钩锁' then
        if nobuff('弹跳') and nocd('扶摇直上') then
            cast('扶摇直上')
        end
    end
end
function OnPrepareXYZ(dwCasterID, szSkillName, dwLevel, nLeftFrame, nX, nY, nZ)
    if dwCasterID ~= id() then
        print('OnPrepare 开始读条2', dwCasterID, szSkillName, dwLevel, nLeftFrame, dwTargetID)
    end
end

-- OnCast 施放技能

-- 任何人施放 需要目标的技能 时被调用。
--  谁对谁放了什么技能。
--dwCasterID 施放者ID，这个是放技能的人
--szSkillName 技能名
--dwLevel 技能等级
--nPastFrame 从服务端到达客户端过去的帧数, 用来判断网络延迟
--dwTargetID 目标ID，这个技能是对谁放的
function OnCast(dwCasterID, szSkillName, dwLevel, nPastFrame, dwTargetID)
    if dwCasterID ~= id() then
        print('OnPrepare  任何人施放', dwCasterID, szSkillName, dwLevel, nLeftFrame, dwTargetID)
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
