ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ", "�ܹ���" },
{ "�ؼ�", "�����ؼ�" },
{ "˵��", "��+��" },
}

function Main()
   DPS()
end
function DPS()

--����̬
if pose("��ɽ��ˮ") or pose("������ѩ") or pose("ƽɳ����")then
        fcast("÷����Ū", true)
end
if notarget() or target('boss') or tbuff("÷����Ū") or tbuff("��÷") then
        settar(teamp("û״̬:����", "����С��:20", "ûbuff:��÷|÷����Ū", "���߿ɴ�"))
    end
if dis() < 20 and tnobuff("÷����Ū") and tnobuff("��÷") then
        fcast("÷����Ū")
		else
		settar(teamp("û״̬:����", "����С��:20", "ûbuff:��÷|÷����Ū", "���߿ɴ�"))
    end
if dis() < 20 and tbuff("÷����Ū") then
        cast("��")
		else
		settar(teamp("û״̬:����", "����С��:20", "ûbuff:��÷|÷����Ū", "���߿ɴ�"))
    end
end