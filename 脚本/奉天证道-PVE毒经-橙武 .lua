ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ", "[��β,�޳�,��Ӱ,����,�ҽ�,����,����,����,��Ϥ,�Ƴ��,��Ϣ,���]" },
{ "�ؼ�", "��ƣ��ؼ�����ʽ�˺�x3����˹ƣ��ؼ�����Ϣx2��Ч��x2���Ƴ��׼����ؼ�����Ϣx2��Ч��x2����Ӱ���ؼ�������x1���˺�x2������4%��ǧ˿���ؼ�����Ϣx1���˺�x3��" },
{ "˵��", " ���٣�1928��2�Σ�1.38s��" },
}

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
	
	if nostate("վ��")  then
	return
	end
	
	if state("վ��|��·") then
	use("���ǰ�")
	end
	
	if nobuff("����") then
        cast("������")
	end
	
	if qixue('�ҽ�') and mana() < 0.7 then
		cast('���')
	end

	if nocd("��˹�") then
        cast("��˹�")
    end

	if pet("����")  then
	cast("�Ƴ��׼�")
	end
	
	if buff("�����׼�")  then
	cast("�Ƴ��")
	end
	
    fcast('����')
    fcast('�û�')
	
	if target("npc") and  tnombuff("��Ӱ") or tmbufftime("��Ӱ") < 3 or  buff("��ɽ����")  or buff("��Ӱ�Ե�") then
        cast("���")
    end
	
        cast("����")
		
	if tnombuff('��Ӱ') or tbufftime('��Ӱ') < 2 then
		cast('��Ӱ')
	end
		  
        cast("Ы��")
		
	if target("npc") and  tnombuff("�Х") then
        cast("�Х")
    end
	
        cast("ǧ˿")

end