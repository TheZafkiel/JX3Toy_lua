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


--����
if
 face() > 45
 then
 turn(0)
end
--����8��ǰ
if
dis() > 5
then
movef()
turn(0)
end
--�ھ���������
if 
  dis() <= 13   
then
  cast("����")
  turn(0)
end
--�������ͣ�ƶ�
if 
ota("����") and dis() <= 5 
then
stopf()
turn(0)
end


end