--����
ZuoZhe = 'YUI'
--��Ѩ
QiXue = '[��ָ][ѩ����][����][����][���][���][����][ѩ��][��Ϣ][�θ�][̤��][���]'
--����˵��
ShuoMing =
    '�Զ�����ҡ �Լ��� �ؼ�����\n����ָ��? ?�˹�ʱ�� x 2 �� �˺� 4% ������ 3%\n����ָ��?? ��ʽЧ�� x 2 ,??  Ч������ʱ�� + 1 �� ʩչ��Χ x 1\n�������ۣ���Ϣʱ�� x 2 �� Ч������ʱ�� + 3 �� �˹�ʱ�� - 0.25\n����ع�㣺�˹�ʱ�� x 3 �� Ч������ʱ�� + 3?\nܽ�ز��٣���ʽЧ�� x 1 ,??  �˺� 5% ���˺� 4%\n��ѩʱ�磺��ʽЧ�� x 1 ,?  ?�˺� 4% ���˺� 3% ���˺� 5%\n'

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

H_T = 1
function DPS()
    -- print("H_T",H_T)
    if nofight() then
        if nobuff('���ľ���') then
            cast('���ľ���', true)
        end
        H_T = 1
    end
    if mana() < 0.4 then
        cast('��ˮ����', true)
    end

    if nobuff('����') and nocd('��ҡֱ��') then
        cast('��ҡֱ��')
    end
    -- if isme()  then
    --     cast('ˮ���޼�', true)
    -- end
    if nocd('�������') then
        H_T = 1
    end
    if H_T == 1 then
        cast('�������')
        if cd('�������') then
            cast('ˮ���޼�', true)
        end
        if tnombuff('��������') and (bufftime('�������') >= 8 or cd('�������')) then
            cast('����ָ')
        end
        if tnombuff('����ָ') then
            cast('����ָ')
        end
        if tbuff('��������') and tbuff('����ع��') then
            cast('��ʯ���')
        end

        if last('��ʯ���', 3) then
            H_T = 2
        end
    end
    if H_T == 2 then
        if tnombuff('��������') then
            cast('��������')
        end
        if tnombuff('����ָ') then
            cast('����ָ')
        end
        if tnombuff('����ع��') and tmbufftime('����ָ') >= 11 then
            cast('����ع��')
        end

        cast('��ѩʱ��')

        if last('��ѩʱ��', 3) and tmbuff('����ع��') then
            H_T = 3
        end
    end
    if H_T == 3 then
        if tmbufftime('��������') < 4 or tmbufftime('����ع��') < 4 then
            cast('ܽ�ز���')
        end
        if nocd('ܽ�ز���') then
            cast(' ��ѩʱ��')
        end
        if tmbufftime('��������') < 9 then
            cast('��ʯ���')
        end
        if cd('��ʯ���') or tnombuff('����ع��') then
            H_T = 2
        end
        cast('��ѩʱ��')
    end

    -- _____________________________________________________________________________________________________
    -- ��2����ѭ������3DOT֮����һ����ѩ�Ͱ���3
    -- /cast [tnobuff:��������] ��������
    -- /cast [tnobuff:����ָ] ����ָ
    -- /cast [tnobuff:����ع��&tbufftime:����ָ>17] ����ع��
    -- /cast ��ѩʱ��
    -- _____________________________________________________________________________________________________
    -- ��3����2����DOT����һ����ѩ�Ϳ����ú�3�ˣ���3���Զ��ͷ�ܽ�ز��ٺ���ʯ��٣���ʯ����ͷ��꣬Ŀ������û��DOT�ˣ�����2����2��DOT���ѩ����3��ѭ������

    -- /cast [tbufftime:��������<4|tbufftime:����ع��<4] ܽ�ز���
    -- /cast [skill_notin_cd:ܽ�ز���] ��ѩʱ��
    -- /cast [tbufftime:��������<9] ��ʯ���
    -- /cast ��ѩʱ��
    -- _____________________________________________________________________________________________________
    -- --������ٲ���994�����/cast [tbufftime:��������<9] ��ʯ��� �е�9��Ϊ13
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
