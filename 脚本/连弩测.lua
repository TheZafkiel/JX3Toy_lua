ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ", "" },
{ "�ؼ�", "" },
{ "˵��", " " },
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
	
	if nopuppet() or pupmdis() < 4 then
	cast('ǧ����', true)
	end
	
	
    if bomb(0)  or   bomb(1) then
        cast('����ɱ��')        
    end
	
if puppet("����|����|��ɲ") then
        cast('������̬')
    end
	
	if pupmdis() > 4 and nocd("����") and  puptime() < 40 then
	cast('ǧ����', true)
	end
	if puppet("����|����|��ɲ") then
        cast('������̬')
    end	
	
	if puppet("����") and pupmdis() < 4 then
	cast('����')
	end
	
	if last("����",10) and ota("����") then 
	return
	end
	
	if puppet("����") and mbuff("����") and last("����",5)then
	cast('��������')
	end
	
	if tnombuff('��Ѫ') or tmbufftime('��Ѫ') < 10 and dis() < 19 then
            cast('��Ůɢ��')
        end
	if puppet("����")then
	cast('����')
	end
	if buff('����ɱ��C')then
	cast('ͼ��ذ��')
	end
	cast('�����滨��')
	cast('�������')
	cast('ʴ����')
    
       
        
end