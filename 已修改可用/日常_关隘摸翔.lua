--����
ZuoZhe = "Zafkiel"
--��Ѩ
QiXue = ""
--����˵��
ShuoMing = "����"






function Main()
   test()
   richang()
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
				bigtext("���裬��buff", 1)
			end
		end
	end

	if nobuff("����һ��") and DOODADID1 ~= 0 then
		interact(DOODADID1)
		bigtext("�����ȥ��", 1, 3)
		else
		if nobuff("����һ��") and DOODADID2 ~= 0 then
			interact(DOODADID2)
			bigtext("�����ȥ��", 1, 3)
			else
			if nobuff("����һ��") and DOODADID3 ~= 0 then
				interact(DOODADID3)
				bigtext("�����ȥ��", 1, 3)
			end
		end
	end


end


function richang()
    --��Ӫ�ճ�
    --�Ҹ�û�жԵķ������һ��Զ����裨������ ����û���ԣ�
    local shitid = doodad("ģ��ID:9988", "����ID:46405", "����<6", "������", "�������")
    local carshit1 = doodad("ģ��ID:9759", "����ID:45360", "����<6")
    --������
    local carid = npc("��ϵ:�Ѻ�", "����:���������ʳ�")
    --local carid = npc("��ϵ:�Ѻ�", "����:���˹����ʳ�")

    if shitid ~= 0 then
        interact(shitid)
    end
    --if npc("��ϵ:�Ѻ�", "����:���˹����ʳ�") and map("������ÿ�ɽ") and carid ~= 0 then
    if npc("��ϵ:�Ѻ�", "����:���������ʳ�") and map("������ÿ�ɽ") and carid ~= 0 then
    settar(carid)
    follow()
    end


end










function follow()
    local carshit2 = doodad("ģ��ID:9759", "����ID:45360", "����<6")
--����npc
if
 face() > 45
 then
 turn(0)
end
--����5��ǰ
if
dis() > 5
then
movef(true)
turn(0)
end

if
 dis() <= 5
then
movef(false)
turn(0)
end

if carid ~= 0 and carshit2 ~= 0 then
print(carshit2)
interact(carshit2)
--�����׶ν���
bigtext("�����ȥ��", 1, 3)
    if carid == 0 and carshit2 ~= 0 then
    moveto(91049, 13617, 1063104)
    bigtext("���ѵ�վ", 1, 3)
    interact(carshit2)
    end
end




end