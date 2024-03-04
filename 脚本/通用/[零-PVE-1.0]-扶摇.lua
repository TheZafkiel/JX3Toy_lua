--????
ZuoZhe = 'YUI'
--???
QiXue = ''
--???????
ShuoMing = '???????? ????? ????????|????.????|???¦Â?? ????50%?? ,????????3??'

-- ????? 0 ¦Ä???? 1 ????  3-???? ???? 4???§³??
FYZT = 0 --'123'
FYZT_ARR_time = {} --???????
--??????????
ZD_FYZT = true
-- ???????????????
ZD_ZT_TIME = time()

function Main()
   --  ZHIKONG_2()

    if  isRun() then
        if totaprog() > 0.5 and tota('????????|????.????|???¦Â??') then
            suspension(3000)
            FYZT = 0
            jump_1()
        end
        DPS()
    end
end

function DPS()
    if   nobuff('????') and nocd('??????') then
        cast('??????')
    end
end

-- ??????
function isRun(arg1, arg2, arg3)
    return time() >= ZD_ZT_TIME
end
-- ??? T ????
function suspension(t)
    ZD_ZT_TIME = t + time()
end

-- ?????
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
        cast('????????')
        cast('???????')
        cast('???????')
        cast('??????')
        FYZT = 5
    end
    if FYZT == 6 then
        -- statements
        jump()
        FYZT = 7
    end
end

--[[***
  ??? 
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

    -- ???????
    if state('???') and last('??????', 30) and nobuff('????') and jumpc() == 1 and FYZT_ARR_time[1] == nil then
        FYZT_ARR_time[1] = time()
        FYZT = 1.5
        if isRun() then
            suspension(4000)
        end
    end
    if
        state('???') and last('??????', 30) and nobuff('????') and jumpc() == 1 and --FYZT == 1 and
            ((FYZT == 1 and time() - FYZT_ARR_time[1] >= 1600 and time() - FYZT_ARR_time[1] <= 1900) or
                (FYZT == 1.5 and time() - FYZT_ARR_time[1] >= 1000 and time() - FYZT_ARR_time[1] <= 1900))
     then
        FYZT = 2
        jump_1()
    end

    if
        state('???') and last('??????', 30) and nobuff('????') and jumpc() == 2 and
            (FYZT == 3 and time() - FYZT_ARR_time[2] >= 600 and time() - FYZT_ARR_time[2] <= 1500)
     then
        FYZT = 4
        jump_1()
    end

    if (FYZT_ARR_time[3] and FYZT == 5 and time() - FYZT_ARR_time[3] >= 1300 and time() - FYZT_ARR_time[3] <= 2500) then
        FYZT = 6
        jump_1()
    end

    if not (state('???')) and jumpc() == 0 then
        FYZT = 0
        FYZT_ARR_time = {}
    end
end
