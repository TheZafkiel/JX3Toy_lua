function ����_��Ƚ���(Outtime,Dis,��ת��ǩ)
	local v1
	Dis = Dis or 20
	local dwTickCount = lua_GetTickCount()
	--OutputMessage('����_��Ƚ��� Begin')
	while true do
		��ʱ(200)
		���㷴��('����:����_��Ƚ���',dwTickCount)
		local Find = function ()
			local MONTABLE,v,k
			MONTABLE = ����_���Ա�����()
			for k,v in ipairs(MONTABLE) do
				if string.find('������ʦ|������ʦ|������ʦ',v.szName) ~= nil and v.nDistance3D < Dis then
					return v
				end
			end
			for k,v in ipairs(MONTABLE) do
				if v.szName == '����' and v.nDistance3D < Dis then
					return v
				end
			end
			return nil
		end
		v1 = Find()
		if not v1 then
			break
		end
		��ɱ_ʹ�ü���(v1)
		if Outtime and lua_GetTickCount() - dwTickCount >= Outtime*1000 then
			if ��ת��ǩ and type(��ת��ǩ) == 'string' then
				��ת����ǩ(��ת��ǩ,1)
			end
			break
		end
	end
	--OutputMessage('����_��Ƚ��� End')
	ʬ��_ʰȡָ������('������ʦ|������ʦ|������ʦ|����|���ĵİ���',20)
	�ر�ʰȡ�б�()
	ս��_������߹���(20,5)
	��ʱ(100)
	ʬ��_ʰȡָ������('������ʦ|������ʦ|������ʦ|����|���ĵİ���',20)
	����Ṧ�ƶ�״̬()
	�ظ�Ѫ��()
end
function ������ʼ��()
	����_�Զ�����('��')
	����_��ֹ���()
	����_�����������('��')
	����_��ְҵ���ܷ���()
	if ִ��_�����ϴνű���¼����() == 0 then
		ִ��_���ű�('����-Ӣ�ۼ�����.lua')
	end
end
������ʼ��()