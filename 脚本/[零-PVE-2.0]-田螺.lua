--����
ZuoZhe = 'YUI'
--��Ѩ
QiXue = '[������ȭ][��������][�������][ǧ��֮��][ǧ���ޓ�][�۾�����][��Ѫ����][ʴ����Ѫ][���ɢӰ][�س�����][��ɫ�ߺ�][�׼�����]'
--����˵��
ShuoMing = '  �Զ�����ҡ �Լ��� \n ���Ը��Ļ��� �ֶ����� ���� �����Զ�����'

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

ACSJ = 0
function DPS()
    if   nobuff('����') and nocd('��ҡֱ��') then
        cast('��ҡֱ��')
    end
    if target() and nofight() and ACSJ < 3 then
        cast('����ɱ��')
        ACSJ = ACSJ + 1
    end
    if last('ǧ����', 2) then
        cast('������̬')
        LVGJ = time()
    end
    if nobuff('ǧ��֮��') then
        cast('ǧ����',true)
        LVGJ = nil
    end
    if fight() then
        cast('����')
        if buff('��������') then
            cast('����')
        end
        -----���ѭ��
        if tnombuff('��Ѫ') or tmbufftime('��Ѫ') < 4 and dis() < 19 then
            cast('��Ůɢ��')
        end
        if nolast('����ɱ��', 3) then
            cast('����ɱ��')
            ACSJ = ACSJ + 1
        end
        if ACSJ >= 3 then
            cast('ͼ��ذ��')
            ACSJ = 0
        end

        cast('�������')
        if tmbufftime('��Ѫ') > 15 then
            cast('�����滨��')
        end

        if tmbufftime('��Ѫ') > 4 then
            cast('ʴ����')
        end
        cast("��ȸ��")
        cast('��Ůɢ��')
    end
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
