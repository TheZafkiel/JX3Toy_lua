ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ", "�̹���" },
{ "�ؼ�", "�����ؼ�" },
{ "˵��", "û�̽���buff ��buffˢ��" },
{ "˵��2", "���Ķ����Ķ�" },
}
function Main()
   DPS()
end
function DPS()
addopt("��1��ˢhot", true)
addopt("��2��ˢhot", true)
addopt("��3��ˢhot", true)
addopt("��4��ˢhot", true)
addopt("��5��ˢhot", true)

function Main()
   DPS()
end
function DPS()



local meidun = teamp("û״̬:����", "����С��:20", "ûbuff:��|��", "���߿ɴ�")

--��ȡ����
--����У�������,�ͷż��� 
	if meidun and getopt("��1��ˢhot") then
		settar(teamp("С��:1","û״̬:����", "����С��:20", "ûbuff:��|��", "���߿ɴ�"))
	end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end	
--	
	if meidun and getopt("��2��ˢhot") then
		settar(teamp("С��:2","û״̬:����", "����С��:20", "ûbuff:��|��", "���߿ɴ�"))
	end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end	
--
	if meidun and getopt("��3��ˢhot") then
		settar(teamp("С��:3","û״̬:����", "����С��:20", "ûbuff:��|��", "���߿ɴ�"))
	end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end	
--
	if meidun and getopt("��4��ˢhot") then
		settar(teamp("С��:4","û״̬:����", "����С��:20", "ûbuff:��|��", "���߿ɴ�"))
	end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end	
--
	if meidun and getopt("��5��ˢhot") then
		settar(teamp("С��:5","û״̬:����", "����С��:20", "ûbuff:��|��", "���߿ɴ�"))
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end	


    --���߿ɴ� û��Ԫ ����Ԫ
    xcast('��', teamp('���߿ɴ�', '����С��:20', 'ûbuff:��'))
    xcast('��', teamp('���߿ɴ�', '����С��:20', 'ûbuff:��'))
    xcast('��', teamp('���߿ɴ�', '����С��:20', '��buff:��|��'))

end

	if meidun and getopt("��2��ˢhot") then
		settar(teamp("С��:2","û״̬:����", "����С��:20", "���߿ɴ�"))
		end
	if state("վ��") and pose("��ɽ��ˮ") then
		cast("������ѩ")
		end
	if state("��·|�ܲ�") and pose("������ѩ") then
		cast("��ɽ��ˮ")	
		end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if tbuff("��") or tbuff("��")	then
        cast("��")
	end 
	if ota("��") and state("վ��") and pose("������ѩ") then
		cast("������ѩ")
	end	
--
	if meidun and getopt("��3��ˢhot") then
		settar(teamp("С��:3","û״̬:����", "����С��:20", "���߿ɴ�"))
		end
	if state("վ��") and pose("��ɽ��ˮ") then
		cast("������ѩ")
		end
	if state("��·|�ܲ�") and pose("������ѩ") then
		cast("��ɽ��ˮ")	
		end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if tbuff("��") or tbuff("��")	then
        cast("��")
	end 
	if ota("��") and state("վ��") and pose("������ѩ") then
		cast("������ѩ")
	end	
--
	if meidun and getopt("��4��ˢhot") then
		settar(teamp("С��:4","û״̬:����", "����С��:20", "���߿ɴ�"))
		end
	if state("վ��") and pose("��ɽ��ˮ") then
		cast("������ѩ")
		end
	if state("��·|�ܲ�") and pose("������ѩ") then
		cast("��ɽ��ˮ")	
		end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if tbuff("��") or tbuff("��")	then
        cast("��")
	end 
	if ota("��") and state("վ��") and pose("������ѩ") then
		cast("������ѩ")
	end	
--

	if meidun and getopt("��5��ˢhot") then
		settar(teamp("С��:5","û״̬:����", "����С��:20", "���߿ɴ�"))
		end
	if state("վ��") and pose("��ɽ��ˮ") then
		cast("������ѩ")
		end
	if state("��·|�ܲ�") and pose("������ѩ") then
		cast("��ɽ��ˮ")	
		end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if dis() < 20 and tnobuff("��") then
        cast("��")
    end
	if tbuff("��") or tbuff("��")	then
        cast("��")
	end 
	if ota("��") and state("վ��") and pose("������ѩ") then
		cast("������ѩ")
	end	
--