--����
ZuoZhe = 'YUI'
--��Ѩ
QiXue = '[�׺�][�Ĺ�][������*�ص�][��Ԫ][ͬ��][�Ͳ�][����][����][����][����][�Ի�][�̱�]'
--����˵��
ShuoMing = '�Զ�����ҡ �Լ��� ��������|����.���һ|��ɽβ�� ����50%�� ,�������ͣ3��'

-- ��ҡ״̬ 0 δ���� 1 ����  3-���� ���� 4׼��С�Ṧ
FYZT = 0 --'123'
FYZT_ARR_time = {} --����ʱ��
--�Զ���ҡ����
ZD_FYZT = true
-- ��ͣ�����ͷŵ�ĳʱ��
ZD_ZT_TIME = time()

function Main()
   -- ZHIKONG_2()

    if isRun() then
        if totaprog() > 0.5 and tota('��������|����.���һ|��ɽβ��') then
            suspension(3000)
            FYZT = 0
            jump_1()
        end
        DPS()
    end
end

function DPS()
    -- statements
    if fight() and nobuff('����') and nocd('��ҡֱ��') then
        cast('��ҡֱ��')
    end
    if not (rela('�ж�')) or dis() > 23 then --Ŀ��Ϊ�ж�/��������/Ŀ��������20��/GCD��������ͣ����
        return 1
    end
    if qidian() > 8 or last('�����ֻ�', 1.5) then
        cast('���ǻ���')
    end
    if nobuff('�Ʋ��' --[[�Ʋ�񷱧��]]) or nolast('�Ʋ��', 36) then
        fcast('�Ʋ��', true)
    end

    if nobuff('12783' --[[����5��]]) then
        fcast('��������', true)
    end
    --     fcast(18983--[[��������]] , buff("12783"--[[����5��]]) and bufftime("12783"--[[����5��]]) <= 3100 )
    if buff('12783' --[[����5��]]) and bufftime('12783' --[[����5��]]) <= 3 then
        cast('��������')
    end

    --     fcast(15193--[[��������]] , (npcnum("58294"--[[������������]]) == 0 or npcdis("58294"--[[������������]]) > 7 or casttime(15193--[[��������]]) >= 36000) and (state == stand or state == float) , "methrow")

    -- if buff("9964"--[[�Ʋ�񷱧��]]) and casttime(359--[[�Ʋ��]]) < 36000 and bufftime("12783"--[[����5��]]) > 3100 and casttime(15193--[[��������]]) < 36000 then

    --     fcast(2681--[[��������]] , nobuff("2757"--[[����buff]])  and casttime(359--[[�Ʋ��]]) <= 24000 )
    if nobuff('2757' --[[����buff]]) and last('�Ʋ��',24) then
        cast('��������', true)
    end
    --     fcast(355--[[ƾ������]],bufftime("2757"--[[����buff]]) > 5000 or cdtime(2681--[[��������]]) > 30 )
    if bufftime('2757' --[[����buff]]) > 5 then
        cast('ƾ������', true)
    end
    --     fcast(18668--[[���϶���]] , "throw")
    cast('���϶���')
    --     fcast(357--[[������]] , (mp <= 45 and nobuff("2757"--[[����buff]]) and nav <= 8 ) and (state == stand or state == float) , "methrow")
    if mana() < 0.45 and nobuff('2757') and qidian() < 8 then
        cast('������', true)
    end
 
    if state('վ��') then
        cast('�����ֻ�')
    end
    cast('̫���޼�')
end

-- �Ƿ���ͣ
function isRun(arg1, arg2, arg3)
    return time() >= ZD_ZT_TIME
end
-- ��ͣ T ����
function suspension(t)
    ZD_ZT_TIME = t + time()
end

-- һ����
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
        cast('��������')
        cast('������ʤ')
        cast('��̨���')
        cast('ӭ�����')
        FYZT = 5
    end
    if FYZT == 6 then
        -- statements
        jump()
        FYZT = 7
    end
end

--[[***
  �Ϳ� 
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

    -- �����Ϳ�
    if state('��Ծ') and last('��ҡֱ��', 30) and nobuff('����') and jumpc() == 1 and FYZT_ARR_time[1] == nil then
        FYZT_ARR_time[1] = time()
        FYZT = 1.5
        if isRun() then
            suspension(4000)
        end
    end
    if
        state('��Ծ') and last('��ҡֱ��', 30) and nobuff('����') and jumpc() == 1 and --FYZT == 1 and
            ((FYZT == 1 and time() - FYZT_ARR_time[1] >= 1600 and time() - FYZT_ARR_time[1] <= 1900) or
                (FYZT == 1.5 and time() - FYZT_ARR_time[1] >= 1000 and time() - FYZT_ARR_time[1] <= 1900))
     then
        FYZT = 2
        jump_1()
    end

    if
        state('��Ծ') and last('��ҡֱ��', 30) and nobuff('����') and jumpc() == 2 and
            (FYZT == 3 and time() - FYZT_ARR_time[2] >= 600 and time() - FYZT_ARR_time[2] <= 1500)
     then
        FYZT = 4
        jump_1()
    end

    if (FYZT_ARR_time[3] and FYZT == 5 and time() - FYZT_ARR_time[3] >= 1300 and time() - FYZT_ARR_time[3] <= 2500) then
        FYZT = 6
        jump_1()
    end

    if not (state('��Ծ')) and jumpc() == 0 then
        FYZT = 0
        FYZT_ARR_time = {}
    end
end
