--����
ZuoZhe = 'YUI'
--��Ѩ
QiXue = '[��¶][ʢ��][����][����][����][ɢ��ϼ][����][���][˪��][����][��ü][�ຮӳ��]'
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
    --  ZHIKONG_2()

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
    if nobuff('����') and nocd('��ҡֱ��') then
        cast('��ҡֱ��')
    end
    
  
    if (fight() and ttlife() < 0.99) or ttlife() < 0.8 then
        if (state('��·') or state('�ܲ�')) and tlife() < 0.6 and not (notarget()) then
            cast('�ຮӳ��')
        end

        --  ��·������ӳ��
        if (tlifec() < 58888 or tlife() < 0.5) and (cd('����Ͱ�') and cd('��ĸ����')) then
            cast('�ຮӳ��')
        end
        --  and (cd("����Ͱ�") and cd("��ĸ����"))
        if (tlifec() < 58888 or tlife() < 0.3) then
            cast('��������')
        end
        -- ���� ���ȱ�Σ����
        if tlifec() < 38888 or tlife() < 0.5 then
            cast('��ĸ����')
        end
        if tlifec() < 38888 or tlife() < 0.5 then
            cast('����Ͱ�')
        end
        --,"��ѪС��:0.3","����С��:20"))
        -- ����Լ�Ѫ���㹻 ������ƽ̯ ��Ȼ����
        -- �������� Ȼ����� [��ĸ����][����Ͱ�]

        -- xcast("��ĸ����", )

        --[����][]
        if nobuff('��Ԫ����') then
            cast('��Ԫ����', true)
        end
        if nobuff('����') then
            cast('�������', true)
        end
        if tnombuff('��Ԫ����') and tlife() > 0.5 then
            cast('��Ԫ����')
        end
        if tnombuff('����') and tlife() > 0.5 then
            cast('�������')
        end
        if (tlifec() > 18888 and tlife() > 0.3 and tmbuff('��Ԫ����')) or (cd('����Ͱ�') and cd('��ĸ����')) then
            cast('��ѩƮҡ')
        end
    end

    --���߿ɴ� û��Ԫ ����Ԫ
    -- if  enemyp("�����ٷֱ�:������|������|������>0.5", "buff���:�ɴ��")
    -- xcast("���ɾ���", enemyp("�����ٷֱ�:������|������|������>0.5", "buff���:�ɴ��"))
    xcast('��Ԫ����', teamp('���߿ɴ�', '����С��:20', 'ûbuff:��Ԫ����', '��Ѫ����:0.01', '����С��:0.5'))
    xcast('��Ԫ����', teamp('���߿ɴ�', '����С��:20', 'ûbuff:��Ԫ����', '��ѪС��:0.95', '��Ѫ����:0.02'))
    xcast('�������', teamp('���߿ɴ�', '����С��:20', 'ûbuff:����', '��Ѫ����:0.01', '��ѪС��:0.9'))
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
