--��Ѩ
QiXue = '����,����,��ǿ,�޽�,��Ԫ,ԽԨ,��ӯ,ѱ��,���,ϢԪ,����,�����'
--����˵��
ShuoMing = ' ��  '

function Main()
    if life() < 0.3 then
        cast('Ц���', true)
    end

    -------------------------�ָ���------------------------------------
    if nobuff('�޽�') or nobuff('������') then 
        fcast('������')
    end
    if nobuff('�޽�') then 
        cast('����ͷ')
    end
    if nobuff('��Ԫ')  then
        cast('��ս��Ұ')
    end
    if nobuff('��Ԫ')  then
        cast('��ս��Ԩ')
    end
    cast('�����')
    cast('�����л�')
    cast('��������')
end