--����
ZuoZhe = "Zafkiel"
--��Ѩ
QiXue = "_(:�٩f��)_"
--�ؼ�
MiJi = "��"
--����˵��
ShuoMing = "�ֶ���[���������]��ʹ��**����"


function Main()
   DPS()

end
function DPS()
------------------------------------------------û�йҼ���ɾ�����
--�Ҽ�ͼ���ϵ���������actionclickʹ�õ�4�ŵ�14���Ҽ�
--�������� �������
if nobuff("�����") and  nobuff("����")
then
actionclick(4, 14)
end

--����ר�� �������ж�  û�����������ɾ����� �����Ż�-���ñ�ץ̫���˻�ûд��... ��
if  bufftime("�����") <= 60 and tbufftime("פ��") >= 30 and tname("����")
then
cbuff("����")
actionclick(4, 14)
cast(53)
------------------------------------------------û�йҼ���ɾ�����


end

--����
if
 face() > 120
 then
 turn()
end
--����15��ǰ
if
dis() > 15
then
movef(true)
turn()
end
--�ھ���������
if 
  dis() <= 30
then
  cast("����")
  turn(0)
end
--�������ͣ�ƶ�
if 
casting("����") and dis() <= 5
then
movef(false)
turn()
end


end
-------------------------------
--��ɽ    [С��]˵�������ѳ�ɽ����λ��־֮ʿ������׼����
