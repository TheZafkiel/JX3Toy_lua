function ����_��ʼ(��������,����Ƶ��,��������)
	local ����������� = ����̨����_���ı�("����̨","�������")
	local ������� = 15
	local fn = (function (b,c)
		-- �������µ��������¼,������������,��ʵ������������
		local myTable = �����¼_����()
		local k,v
		for k,v in ipairs(myTable) do
			if v and lua_GetTickCount() -  v.dwTickCount <= 2*60 *1000 then
				-- ֻ�����1�����ڵļ�¼
				if b == v.szTalkType then
					if string.find(v.szText,c) ~= nil  then
						return true
					end
				end
			end
		end
		return false
	end)
	if ����������� ~= '' then
		������� = tonumber(�����������) or 15
	else
		������� = 15
	end
	local ChannelList = {
	["����"] = true,
	["��ͼ"] = true,
	["����"] = true,
	["��Ӫ"] = true,
	["����"] = true,
	["����"] = true,
	}
	����Ƶ�� = string.sub(����Ƶ��,0,4)
	if �������� == '1' and ChannelList[����Ƶ��] and string.len(��������) > 0 then
		����(����Ƶ��,��������)
		��ʱ(500)
		if fn("ϵͳ","���Դ����Ѿ�����") or fn("ϵͳ","δ�����˺��޷�ʹ������Ƶ��") then
		   return true
		end
		��ʱ(������� * 1000)
	end
	return false
end
function ����_����������()
	local a = ����̨����_���ı�("����̨","������ѡһ")
	local b = ����̨����_���ı�("����̨","������ѡ��")
	local c = ����̨����_���ı�("����̨","������ѡ��")
	local d = ����̨����_���ı�("����̨","������ѡ��")
	if a == '' and b == '' and c == '' and d == '' then
		OutputMessage("���ڿ���̨-���ƴ���2-���к�������")
		�����ű�()
		return false
	end
	local a1 = ����̨����_���ı�("����̨","����Ƶ��һ")
	local b1 = ����̨����_���ı�("����̨","����Ƶ����")
	local c1 = ����̨����_���ı�("����̨","����Ƶ����")
	local d1 = ����̨����_���ı�("����̨","����Ƶ����")
	
	local a2 = ����̨����_���ı�("����̨","��������һ")
	local b2 = ����̨����_���ı�("����̨","�������ݶ�")
	local c2 = ����̨����_���ı�("����̨","����������")
	local d2 = ����̨����_���ı�("����̨","����������")
	if ����_��ʼ(a,a1,a2) or ����_��ʼ(b,b1,b2) or ����_��ʼ(c,c1,c2) or ����_��ʼ(d,d1,d2) then return false end
	return true
end
function �Զ�������ʼ��()
	while true do
		if not ����_����������() then
		   �Զ����˺�״̬("���Դ����Ѿ�����!!")
		   �Զ����˺�״̬("��ѡ",0)
		   ��ʱ(8000)
		   ������Ϸ()
		end
		��ʱ(200)
	end
end
����_�����������('��')
�Զ�������ʼ��()