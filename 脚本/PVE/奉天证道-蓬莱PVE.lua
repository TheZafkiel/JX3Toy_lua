--��Ѩ
QiXue = '���� ��ɣ ���� ��Դ ̫Ϣ ɡ�� ���� ��� �ط� ���� ���� ���'
--����˵��
ShuoMing = '�������ֻ��ߵ�����������'

function Main()
    if nobuff('�������') then
        cast('�������')
    end

    ------------˫�麣�����Ʒ��꣨�ֶ����ܣ�
    if buff('�������') then
        cast('�ﻯ����')
        if buff('̫Ϣ') or buff('ɡ��') then
            cast('���ͼ��')
        end

        cast('�麣����')
        cast('������ڤ')
        cast('������')
        cast('�ﻯ����')
        if cd('������') and cd('�麣����') and cd('������ڤ') then
            cast('������ء����')
        end
    else
        if (nocd('������') or cdtime('������') < 2) and nocd('�麣����') and nocd('������ڤ') then
            cast('�������')
        end
        if buff('̫Ϣ') or buff('ɡ��') then
            cast('���ͼ��')
        end
        cast('ľ�����')
        cast('Ծ��ն��')
        cast('��ˮ��ǧ')
    end
end