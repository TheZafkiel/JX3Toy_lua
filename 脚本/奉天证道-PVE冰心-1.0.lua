--����
ZuoZhe = "Zafkiel"
--��Ѩ
QiXue = "[��÷��][ǧ�����][��ױ][��÷][����][����/������][����][Ԫ��][˪��][����][����][˪��]"
--�ؼ�
MiJi = "��"
--����˵��
ShuoMing = "���٣�1542����ͣ�5868���Ƽ��� ���ܻ�ȱ�� �ֶ�����  "

addopt("δ��ս������", true)

function Main()
   DPS()
end
function DPS()

--���������,����
	if horse() then
		cbuff("����")
	end
	if qidian() == 0 then
		cast("�����ķ�", true)
end	
	
--��Ѫ���
	if life() < 0.5 and fight() then
		cast("��صͰ�", true)
	end
	
--���û��Ŀ�����Ŀ�����˻���Ŀ�겻�ǵжԹ�ϵ,ֱ�ӷ���
	if notarget() or tstate("����") or not rela("�ж�") then
		return
	end

--���ѡ����"δ��ս������"ѡ����Լ�����ս��״̬,ֱ�ӷ���
	if getopt("δ��ս������") and nofight() then
		return
	end
	
	if nostate("վ��")  then
	return
	end

if nocd("�Ĺ���") then
        cast("�Ĺ���")
    end
if target("boss") and  nocd("��������") and buffsn("����") == 5 then
        cast("��������")
    end
	
if  target("boss") and qixue("������") and buffsn("����") == 5 then
      fcast("������")

end
	
if nocd("�������") and tbuffsn("����") < 3 or mana() < 0.5 or tmbufftime("����") < 2 then
        fcast("�������")
    end
 
      cast("�������")
      cast("���Ҽ���")
end