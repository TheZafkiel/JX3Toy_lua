--��Ѩ
QiXue = '��ָ,ѩ����,����,����,���,���,����,ѩ��,��Ϣ,�θ�,̤��,���'
--����˵��
ShuoMing =
    '����ָ��? ?�˹�ʱ�� x 2 �� �˺� 4% ������ 3%\n����ָ��?? ��ʽЧ�� x 2 ,??  Ч������ʱ�� + 1 �� ʩչ��Χ x 1\n�������ۣ���Ϣʱ�� x 2 �� Ч������ʱ�� + 3 �� �˹�ʱ�� - 0.25\n����ع�㣺�˹�ʱ�� x 3 �� Ч������ʱ�� + 3?\nܽ�ز��٣���ʽЧ�� x 1 ,??  �˺� 5% ���˺� 4%\n��ѩʱ�磺��ʽЧ�� x 1 ,?  ?�˺� 4% ���˺� 3% ���˺� 5%\n'
H_T = 1
function Main()
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
        if tnombuff('����ع��') and tmbufftime('����ָ') >= 16.5 then
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
end