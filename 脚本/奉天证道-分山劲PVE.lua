--��Ѩ
QiXue = '����,����,��Ұ,��Į,����,����,����,��ս,����,�ߺ�,����,����'
--����˵��
ShuoMing =
    ' �ٵ�-������  ����-������   Ѫŭ-2��ŭ2��Ѫ'

function Main()
	if posstate==shield then
    if nobuff('����') or bufftime('����') > 53 then
        cast('Ѫŭ', true)
    end
        if rage() > 44 then
            cast('�ܷ�')
        end
		cast('�ܻ�')
		cast('��ѹ')
		cast('����')
		cast('13044')
		cast('13059')
		cast('13060')
	end

	if posstate==sword then
    if nobuff('����') or bufftime('����') > 53 then
        cast('Ѫŭ', true)
    end
        if tnombuff('��Ѫ') or tbufftime('��Ѫ') < 2 then
            cast('ն��')
        end
       if tmbufftime('��Ѫ') > 16 then
	cast('����')
        end
        if nobuff( '��Ұ') or rage() < 15 then
            cast('����')
        end
		cast('�ٵ�')
        if rage() < 5 then
            cast('�ܻ�')
        end
	end
end