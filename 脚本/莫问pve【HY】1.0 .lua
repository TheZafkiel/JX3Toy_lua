--����
ZuoZhe = "HY"
--��Ѩ
QiXue = "[����][�ɷ�][��][�趬][����][ʦ��][����][����][����][�ƺ�][����][�޾���]"
--����˵��
ShuoMing = "������ɣ�ȫ�Զ���ע�⾡���ܲ�Ҫ�������������������ĵ��˺����ܡ� �����ֶ�����ʱ��������̬����Ҫ����λ�Ƶ�ʱ���и�ɽ��ˮ������ʱ��������ѩ��֤���������λ�������Ӱ���綼�����и�ɽ��"
function Main()
	gaoshanls=0
   DPS()
end
function DPS()
	if tota('���⹳��') then
		fcast('��������')
	end
	if buff('�趬����') and bufftime('��������') >=5 then
		fcast('��ɽ��ˮ')
		gaoshanls=1		
	end	
	if nobuff('��������') and gaoshanls==1	then
		cast("������ѩ")
		gaoshanls=0		
	end
    if nobuff('��Ӱ��˫') then
        cast("��Ӱ��˫")
    end
	if buff('��Ӱ��˫')  then
        cast("��Ӱ��б",true)
		if nobuff("�趬����") then
		cast("��")
		end
    end
	if bufftime('��Ӱ��˫') <=1 then
        fcast("��Ӱ��˫")
    end	
	if tnombuff('��') then
        cast("��")
    end
	if tnombuff('��') then
        cast("��")
    end
	if pose('������ѩ') then
		fcast("������ѩ")
	end
	if buff('�趬��һ') or buff('�趬����') then
        cast("��")
    end
    if buff('�趬����') then
        cast("��")
    end
	if cn("��")==4 then
		cast("��")
	end
	if cn("��Ӱ��б")==3 then
		cast("���λ�Ӱ")
		cast("��Ӱ��б",true)
	end
	if tmbufftime('��') <=5 or tmbufftime('��')<=5 then
        cast("��")
		cast("�乬")
    end	
	if nobuff('�趬��һ') and nobuff('�趬����') then
	    cast("��")
		cast("����")
	end
	if cntime("��")>10.5 then
		cast("��")
		cast("�乬")
	end
	if cntime("��")<=10 then
		cast("��")
	end
	cast("��")

end