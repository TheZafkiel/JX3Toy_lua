--����
ZuoZhe = "Zafkiel"
--��Ѩ
QiXue = ""
--����˵��
ShuoMing = "����"
function Main()
   test()
end



-----------------------------------------------------------
function test()
	--�ÿ�ɽ�һ���(����id������û��)
	local DOODADID1 = doodad("ģ��ID:9980", "����ID:49183")
	local DOODADID2 = doodad("ģ��ID:10005", "����ID:49184")
	local DOODADID3 = doodad("ģ��ID:9981", "����ID:49182")
	if bufftime("����һ��") >= 0 and DOODADID1 ~= 0 then
		bigtext("���裬��buff �ȴ���", 1)
		else
		if bufftime("����һ��") >= 0 and DOODADID2 ~= 0 then
			bigtext("���裬��buff �ȴ���", 1)
			else
			if bufftime("����һ��") >= 0 and DOODADID3 ~= 0 then
				bigtext("���裬��buff �ȴ���", 1)
			end
		end
	end

	if nobuff("����һ��") and DOODADID1 ~= 0 then
		interact(DOODADID1)
		else
		if nobuff("����һ��") and DOODADID2 ~= 0 then
			interact(DOODADID2)
			else
			if nobuff("����һ��") and DOODADID3 ~= 0 then
				interact(DOODADID3)
			end
		end
	end


end