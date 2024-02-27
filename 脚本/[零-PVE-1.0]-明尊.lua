--×÷Õß
ZuoZhe = 'YUI'
--ÆæÑ¨
QiXue = '[Ê¥¹âÃ÷][´È±¯ÐÄ][¼ÅÃð][ÔÂ¾¡ÌìÃ÷][³¬·²ÈëÊ¥][¼«ÀÖÒý][×ÝÓöÉÆÔµ][Ãî¾µ¾ª¼Å][¶É¶òÁ¦][ÈÕÔÂÍ¬»Ô][ËÞ½ÇÉú»Ô][ÐÄ»ðÌ¾]'
--ÆäËûËµÃ÷
ShuoMing = '×Ô¶¯²¹·öÒ¡ ×Ô¼ºÌø \n Ãî¾µ¾ª¼Å¡¾Ã÷½Ì¡¿£¬¼ÓËÙ773'

-- ·öÒ¡×´Ì¬ 0 Î´ÆðÌø 1 ÆðÌø  3-¶¥µã ¶þ¶Î 4×¼±¸Ð¡Çá¹¦
FYZT = 0 --'123'
FYZT_ARR_time = {} --ÆðÌøÊ±¼ä
--×Ô¶¯·öÒ¡¿ª¹Ø
ZD_FYZT = true
-- ÔÝÍ£¼¼ÄÜÊÍ·Åµ½Ä³Ê±¼ä
ZD_ZT_TIME = time()

function Main()
    -- ZHIKONG_2()

    if isRun() then
        if totaprog() > 0.5 and tota('ÐâÌú¹³Ëø|¾°Á÷.ÌìµØÒ»|ÅüÉ½Î²±Þ') then
            suspension(3000)
            FYZT = 0
            jump_1()
        end
        DPS()
    end
end

function DPS()
    if nobuff('µ¯Ìø') and nocd('·öÒ¡Ö±ÉÏ') then
        cast('·öÒ¡Ö±ÉÏ')
    end
    cast('ÐÄ»ðÌ¾')
    cast('ÉúËÀ½Ù')
    cast('¾»ÊÀÆÆÄ§»÷')
    if tnombuff('½ä»ð') then
        cast('½ä»ðÕ¶')
    end
    if sun() >= moon() then
        cast('ÁÒÈÕÕ¶')
    end
    cast('ÒøÔÂÕ¶')
    if sun() >= moon() then
        cast('³àÈÕÂÖ')
    end
    cast('ÓÄÔÂÂÖ')
end

-- ÊÇ·ñÔÝÍ£
function isRun(arg1, arg2, arg3)
    return time() >= ZD_ZT_TIME
end
-- ÔÝÍ£ T ºÁÃë
function suspension(t)
    ZD_ZT_TIME = t + time()
end

-- Ò»¶ÎÌø
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
        cast('õæÔÆÖðÔÂ')
        cast('ÁèÏöÀ¿Ê¤')
        cast('ÑþÌ¨Õíº×')
        cast('Ó­·ç»ØÀË')
        FYZT = 5
    end
    if FYZT == 6 then
        -- statements
        jump()
        FYZT = 7
    end
end

--[[***
  ÖÍ¿Õ 
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

    -- ±£³ÖÖÍ¿Õ
    if state('ÌøÔ¾') and last('·öÒ¡Ö±ÉÏ', 30) and nobuff('µ¯Ìø') and jumpc() == 1 and FYZT_ARR_time[1] == nil then
        FYZT_ARR_time[1] = time()
        FYZT = 1.5
        if isRun() then
            suspension(4000)
        end
    end
    if
        state('ÌøÔ¾') and last('·öÒ¡Ö±ÉÏ', 30) and nobuff('µ¯Ìø') and jumpc() == 1 and --FYZT == 1 and
            ((FYZT == 1 and time() - FYZT_ARR_time[1] >= 1600 and time() - FYZT_ARR_time[1] <= 1900) or
                (FYZT == 1.5 and time() - FYZT_ARR_time[1] >= 1000 and time() - FYZT_ARR_time[1] <= 1900))
     then
        FYZT = 2
        jump_1()
    end

    if
        state('ÌøÔ¾') and last('·öÒ¡Ö±ÉÏ', 30) and nobuff('µ¯Ìø') and jumpc() == 2 and
            (FYZT == 3 and time() - FYZT_ARR_time[2] >= 600 and time() - FYZT_ARR_time[2] <= 1500)
     then
        FYZT = 4
        jump_1()
    end

    if (FYZT_ARR_time[3] and FYZT == 5 and time() - FYZT_ARR_time[3] >= 1300 and time() - FYZT_ARR_time[3] <= 2500) then
        FYZT = 6
        jump_1()
    end

    if not (state('ÌøÔ¾')) and jumpc() == 0 then
        FYZT = 0
        FYZT_ARR_time = {}
    end
end
