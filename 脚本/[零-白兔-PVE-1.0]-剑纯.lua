--����
ZuoZhe = 'YUI'
--��Ѩ
QiXue = '�Ĺ�,����,����,����,���,����,����,����,�͹�,����,����,���� �л��������ȶ� \n �Ĺ�,����,����,����,����,����,����,����,�͹�,����,����,���� �޻�����ȫ���̶�������ϸ�'
--����˵��
ShuoMing = '�Զ�����ҡ �Լ��� ��������|����.���һ|��ɽβ�� ����50%�� ,�������ͣ3�� \n �����Զ�ը�������� ,��Ҫ���������ֶ�������\n  ����δ��ս��Ŀ��ʮ�������������󿿽�boss��ը�����н����Ͽ���Ŀ��\n �Ĺ�,����,����,����,���,����,����,����,�͹�,����,����,���� �л��������ȶ�'

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
    if nofight() and dis()>13 then
        if nobuff('9951') then
            cast('���ǳ�', true)
        end
        if nobuff('374') then
            cast('��̫��', true)
        end
        cast('������', true)
        if last('������', 8) and buff('9951') and buff('374') then
            cast('�˽���һ', true)
        end
    end
    if fight() then
        if mana() < 0.45 and nobuff('2757') and qidian() < 8 then
            cast('������', true)
        end
    
        if buff('��������') and tnombuff('����') then
            cast('�����޽�')
        end
        if condition then
            -- statements
        end
    end
    --     fcast(357--[[������]] , (mp <= 45 and nobuff("2757"--[[����buff]]) and nav <= 8 ) and (state == stand or state == float) , "methrow")
  

    -- --����δ��ս��Ŀ��ʮ�������������󿿽�boss��ը�����н����Ͽ���Ŀ��

    - 
    -- 	cast(�˻Ĺ�Ԫ,fight and cdtime(2681)<2 and cdtime(588)<20 and npcnum("������")==1)
    -- 	cast(�˽���һ,npcnum("������")==1 and npcdis("������")<9 and nobuff(373) and cdtime(���ǳ�)<1.5)
    -- 	cast(��������,bufftime("14982")>7100 and bufftime("14982")<7500)
    -- 	cast(���ǳ�,fight,nobuff(14982) and cdtime(�˽���һ)>12.12,"me")
    -- --����������֮ǰ��ѭ��
    -- 	cast(���ǳ�,fight,cdtime(�˽���һ)<12.12 and cdtime(�˽���һ)>10.68 and buff(14982),"me")
    -- --����������֮ǰ��ѭ��
    -- 	cast(���ǳ�,fight,nobuff(9951) and nobuff(14934) or cdtime(�˽���һ)>12.12 and nav<9,"me")
    -- --�������ǳ�
    -- 	cast(�����޽�,buff(14934) and nav>8)
    -- 	cast(�˻Ĺ�Ԫ,fight,nobuff(14931))
    -- 	cast(�����޽�,buff(14931) and nav>8)
    -- 	cast(��̫��,fight,nobuff(14931) and npcnum("���ǳ�")==1,"me")
    -- 	cast(������,fight,npcnum("��̫��")==1 and nobuff(14931) and npcnum("������")==0,"me")
    -- 	cast(������,fight,nobuff(14931) and npcnum("������")==0 and nav<9,"me")
    -- --�������н�ѭ��
    -- 	cast(�����޽�,fight and nav>6)
    -- 	cast(�˻Ĺ�Ԫ,fight)
    -- 	cast(��������,fight)
    -- --ʵ�ڴ򲻳���������ʱ�Ĳ���
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
