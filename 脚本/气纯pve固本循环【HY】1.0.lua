--����
ZuoZhe = "HY"
--��Ѩ
QiXue = "���׺硿���Ĺ̡������Ρ�����Ԫ����ͬ�������貽��������������������������������Ի������̱���"
--����˵��
ShuoMing = "�̱�ѭ���������˺����ߣ����Ҳ��õ���λ�Ƶ�ʱ���dps�����⣬�����λ�캢��ʹ�á�����Խ������Խ�ߡ�"
function Main()
   DPS()
end
function DPS()
	if  nobuff('�Ʋ��') or nolast('�Ʋ��',35)then
			cast('�Ʋ��')				
	end
	if  nobuff('����') then
			cast('��������')				
	end
	if bufftime('����')<1.7 then
			cast('��������')
	end 
	if  last('���϶���',1.7) and nolast('��������',55)then
			cast('��������')				
	end
	if  last('���ǻ���',1.3) and tmbuff('����') then
			cast('��ת��һ')
		if  dis()<=8 and nolast('��ת��һ',0.5) then
			cast('���Ż���')				
		end				
	end
	cast('���϶���')
	if last('���϶���',1.6) then
	cast('��������')
	end

	if qidian()>8 or last('�����ֻ�',1.5) then 
		cast('���ǻ���')	
	end
	if state('վ��') then
		cast('�����ֻ�')			
		end
	cast('̫���޼�')		
	end
	