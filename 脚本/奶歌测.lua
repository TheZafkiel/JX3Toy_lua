ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ", "�̹���" },
{ "�ؼ�", "�����ؼ�" },
{ "˵��", "û�̽���buff ��buffˢ��" },
{ "˵��2", "���Ķ����Ķ�" },
}

addopt("��1��ˢhot", true)
addopt("��2��ˢhot", true)
addopt("��3��ˢhot", true)
addopt("��4��ˢhot", true)
addopt("��5��ˢhot", true)

function Main()
   DPS()
end
function DPS()

--����̬		
	if state("վ��") and pose("��ɽ��ˮ") then
		fcast("������ѩ")
		end
	if state("��·|�ܲ�") and pose("������ѩ") then
		fcast("��ɽ��ˮ")	
		end
--����	

local meidun = teamp("û״̬:����", "����С��:20", "���߿ɴ�")

--��ȡ����
--����У�������,�ͷż��� 

	if meidun and getopt("��1��ˢhot") then
		settar(teamp("С��:1","û״̬:����", "����С��:20", "���߿ɴ�","��Ѫ����"))
		end	
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") or tnobuff("��") then
	   settar(teamp("С��:1","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	end
	if tbuff("��") or tbuff("��") and pose("������ѩ")	then
        cast("��")
	end 	
	if ota("��") and pose("������ѩ") then
		fcast("������ѩ")
	end	
	if tbuff("��") or tbuff("��") and pose("��ɽ��ˮ")	then
        cast("�乬")
	end 
	xcast('��', teamp("С��:1","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	xcast('�乬', teamp("С��:1","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
--

	if meidun and getopt("��2��ˢhot") then
		settar(teamp("С��:2","û״̬:����", "����С��:20", "���߿ɴ�","��Ѫ����"))
		end	
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") or tnobuff("��") then
	   settar(teamp("С��:2","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	end
	if tbuff("��") or tbuff("��") and pose("������ѩ")	then
        cast("��")
	end 	
	if ota("��") and pose("������ѩ") then
		fcast("������ѩ")
	end	
	if tbuff("��") or tbuff("��") and pose("��ɽ��ˮ")	then
        cast("�乬")
	end 
	xcast('��', teamp("С��:2","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	xcast('�乬', teamp("С��:2","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
--

	if meidun and getopt("��3��ˢhot") then
		end	
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") or tnobuff("��") then
	   settar(teamp("С��:3","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	end
	if tbuff("��") or tbuff("��") and pose("������ѩ")	then
        cast("��")
	end 	
	if ota("��") and pose("������ѩ") then
		fcast("������ѩ")
	end	
	if tbuff("��") or tbuff("��") and pose("��ɽ��ˮ")	then
        cast("�乬")
	end 
	xcast('��', teamp("С��:3","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	xcast('�乬', teamp("С��:3","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
--

	if meidun and getopt("��4��ˢhot") then
		settar(teamp("С��:4","û״̬:����", "����С��:20", "���߿ɴ�","��Ѫ����"))
		end	
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") or tnobuff("��") then
	   settar(teamp("С��:4","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	end
	if tbuff("��") or tbuff("��") and pose("������ѩ")	then
        cast("��")
	end 	
	if ota("��") and pose("������ѩ") then
		fcast("������ѩ")
	end	
	if tbuff("��") or tbuff("��") and pose("��ɽ��ˮ")	then
        cast("�乬")
	end 
	xcast('��', teamp("С��:4","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	xcast('�乬', teamp("С��:4","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
--

	if meidun and getopt("��5��ˢhot") then
		settar(teamp("С��:5","û״̬:����", "����С��:20", "���߿ɴ�","��Ѫ����"))
		end	
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") then
        cast("��")
    end
	if tnobuff("��") or tnobuff("��") then
	   settar(teamp("С��:5","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	end
	if tbuff("��") or tbuff("��") and pose("������ѩ")	then
        cast("��")
	end 	
	if ota("��") and pose("������ѩ") then
		fcast("������ѩ")
	end	
	if tbuff("��") or tbuff("��") and pose("��ɽ��ˮ")	then
        cast("�乬")
	end 
	xcast('��', teamp("С��:5","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
	xcast('�乬', teamp("С��:5","û״̬:����", "����С��:20", "���߿ɴ�","��buff:��|��"))
--


end