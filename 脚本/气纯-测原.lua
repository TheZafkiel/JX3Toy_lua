ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ", "[�׺�,�Ĺ�,����,��Ԫ,ͬ��,�Ͳ�,����,����,����,����,�Ի�,�̱�" },
{ "�ؼ�", "����:4��4��5���������;����:3��4��-0.25cd*2;����:3��4��5��2��;��:+1��*3���Ľ���40%;��������:cd-4 -8 ���˽��� 50%	������� 6��;ƾ������:cd-15*2���ָܻ���Ѫ 2% ������� 5��;��̫��:��Χ+1*3 ���Ľ��� 40%;̫���޼�:15��*2 20��4��" },
{ "˵��", " ��Ϊ�Զ� �����ֶ� Ĭ���ֶ� �Ʋ�񷲻��1.5s�����Χ�Զ���" },
}

addopt("δ��ս������", true)
addopt("���϶���", false)
addopt("��������", false)

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
	
-- ������Լ���������ԵС��1�ߣ�û�Ʋ�����ʣ��ʱ��С��1.5��, �����Լ����·��Ʋ��
	if nobuff('�Ʋ��') or nolast('�Ʋ��', 30)--[[����]] or qctime("�Ʋ��", -1) < 1.5 then
        cast('�Ʋ��', true)
    end
	
	if nobuff('����') then --[[����1]]
        fcast('��������', true)
    end
	
	if nobuff("����") and qixue("����", 10) then
        cast('��ɽ��', true)
    end	
	
	if getopt("���϶���") then
		cast('���϶���')
	end
	
	if bufftime('����')<1.7 then --[[����2]]
		cast('��������')
	end
	
	if getopt("��������") and nombuff('2757' --[[����]]) and last('�Ʋ��',24)  and last('���϶���',1.6) then
        cast('��������')
    end
	
	if bufftime('2757' --[[����]]) > 5 then
        cast('ƾ������')
    end
	
	if qidian() > 8 and mbuff("2757")  then
        cast('���ǻ���')
    end	

	if qidian() > 8 or last('�����ֻ�', 1.5) and nombuff("2757")  then
        cast('���ǻ���')
    end
	
	if  last('���϶���',1.7) and nolast('��������',55)then
			cast('��������')				
	end
	
--��gcd��	
	if  last('���ǻ���',1.3) and tmbuff('����') then
			cast('��ת��һ')
		if  dis()<=8 and nolast('��ת��һ',0.5) then
			cast('���Ż���')				
		end				
	end

	
	if mana() < 0.42 and nobuff('2757') and qidian() < 8 and qixue("������", 3) then
        cast('������', true)
    end
	
	if state('վ��') then
        cast('�����ֻ�')
    end
	
    cast('̫���޼�')

end