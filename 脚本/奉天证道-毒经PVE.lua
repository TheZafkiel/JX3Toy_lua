
--��Ѩ
QiXue = '��β,�޳�,��Ӱ,����,�ҽ�,����,����,����,��Ϥ,�Ƴ��,��Ϣ,���'
--����˵��
ShuoMing =
    'Ы�ģ�2�˹� �ض�\n ��Ӱ��2�˺� �ض�\n��ƣ�3�˺�\n���㣺2CD��2�˺�\n�Ƴ��׼��� 2��Ϣ\n�����Լ�������С�'

function Main()
	   if nopet('����') then
		cast('������')
	      end
	   if tnombuff('������') or tmbufftime('������') < 5 then
		cast('���')
	      end
	   if qixue('�ҽ�') and mana() < 0.8 then
		cast('���')
	      end
	cast('��˹�')
	cast('�Ƴ��׼�')
	   if buff('�����׼�') then
		cast('�Ƴ��')
	      end
               fcast('����')
               fcast('�û�')
	cast('����')
	   if tnombuff('��Ӱ') or tbufftime('��Ӱ') < 2 then
		cast('��Ӱ')
	      end
	cast('Ы��')
	cast('�Х')
	cast('ǧ˿')
end