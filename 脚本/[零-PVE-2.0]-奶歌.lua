--����
ZuoZhe = 'YUI'
--��Ѩ
QiXue = '��Ĥ���ɣ�ε�� ��� ���� ���� ���� ƽ�� �ϻ� ���� ���� ׯ���� ���� ɣ�ᡣ��Ѫ���ɣ�ε�� ��� ����/���� ���� ���� ���� ����� ��ɽ ���� �幬 ���� �޾���'
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
    if notarget() or target('boss') then
        settar(teamp('����С��:20'))
    end
    if buff('��Ӱ��˫') then
        cast('��Ӱ��б', true)
        cast('�����ả', true)
    end
    if buff('��Ӱ��˫') and bufftime('��Ӱ��˫') <= 1 then
        fcast('��Ӱ��˫')
    end
    if cn('��Ӱ��б') == 3 then
        cast('���λ�Ӱ')
        cast('��Ӱ��б', true)
    end
    if qixue('�޾���') then
        fcast('������ѩ')
    end

    if qixue('����') and qixue('�����') then
        if tmbuff('��') and tmbuff('��') then
            cast('��')
            if tlife() > 0.95 and last('��', 2) and not tid('������') then
                settar(teamp('����С��:20', '��Ѫ����', '��Ѫ����:0.01', '�ҵ�buff����:��>0'))
            end
        end
        if tnombuff('��') then
            cast('��')
        end
        if tnombuff('��') then
            cast('��')
        end
    end
    if nolast('��', 15) then
        cast('��')
    end
    if kuaitaixue == 1 and qixue('����') then
        settar(teamp('��Ѫ����', '����С��:20'))
        kuaitaixue = 0
    end
    if tstate('����') then
        settar(teamp('����Ŀ��', '����С��:20'))
    end
    if tlife() < 0.93 and otaprog('��') < 0.34 and qixue('����') then
        fcast('��')
        kuaitaixue = 1
    end
    if dis() > 20 then
        settar(teamp('ûbuff:÷����Ū|��÷', '����С��:20'))
    end
    if tlifec() > 150000 and tnombuff('��') then
        cast('��')
    end
    if tmbuff('÷����Ū') or tmbuff('��÷') then
        settar(teamp('ûbuff:÷����Ū|��÷', '����С��:20'))
        if dis() > 20 then
            settar(teamp('����С��:20'))
        end
    end

    if tnombuff('÷����Ū') and tnombuff('��÷') and qixue('ׯ����') then
        cast('÷����Ū')
    end
    cast('��')
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
