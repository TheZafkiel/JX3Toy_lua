--����
ZuoZhe = 'HJ'
--��Ѩ
QiXue = '[[��Ѩ��[����][ѩ��][����][���][����][Ԩ��][����][��ʦ][�ٽ�][����][����][��ɽ����]'
--����˵��
ShuoMing = '��������boss�ֶ�����[Ѫ����Ȫ����] ������������ж���������boss�ֶ�����'


addopt("δ��ս������", true)

function Main()
   DPS()
end
function DPS()

--���û��Ŀ�����Ŀ�����˻���Ŀ�겻�ǵжԹ�ϵ,ֱ�ӷ���
	if notarget() or tstate("����") or not rela("�ж�") then
		return
	end

--���ѡ����"δ��ս������"ѡ����Լ�����ս��״̬,ֱ�ӷ���
	if getopt("δ��ս������") and nofight() then
		return
	end

if buff('����') and last('Ѫ����Ȫ',0.5) and nobuff('����') and nobuff('����') and nobuff('�ٽ�') and cn('�ź��')==3  and dis() < 4 then
	cast('��ɽ����')	
end

if buff("����") and nocd("������") and dis() > 6 then
	cast("������")	
end

if dis() < 4 and cd('������')  and cdtime('������')<6 then
	cast('��ɽ����')
end

if last('��ɽ����',0.5) then
	cast('��ڤ����')
end

if last('��ڤ����',0.5) or buff('����') and dis() < 6 then
	cast('�����⹳')
end

if buff('����') and buff('����') and nobuff('����') and buffsn('�ٽ�') < 3 then
	cast('�ź��')
end

if buffsn('�ٽ�')==3 then
	cast('������') 
end

if buffsn('�ٽ�')==3 and cd('������') then
	cast('������')
		if cd('������') then
			cast('Ѫ����Ȫ')
			cast('������')
			cast('�������')
		end
end

--[[if cd('������') then
	cast('������')
	cast('�������')
end--]]

if buff('����') and dis()<6 then
	cast('�Ǵ�ƽҰ')
end


if  cd('������') and cdtime('������')<5 then
	cast('��ڤ����')
end	

if  tnombuff('����') and nobuff('����') and cn('�ź��')>2 and fight() and otatime()<1 and nobuff('����') and nobuff('����') and nobuff('�ٽ�') and cd('������')then
	cast('Ѫ����Ȫ')
end	

cast('�Ǵ�ƽҰ')

end
