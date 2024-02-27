--ÆæÑ¨
QiXue = 'µ¶»ê,Á¶Óü,·ÖÒ°,±±Ä®,·æÃù,¸îÁÑ,»îÂö,ÁµÕ½,´ÓÈÝ,·ßºÞ,ÃïÊÓ,º§ÈÕ'
--ÆäËûËµÃ÷
ShuoMing =
    ' ½Ùµ¶-¼õÏûºÄ  ¾øµ¶-¼õÏûºÄ   ÑªÅ­-2»ØÅ­2»ØÑª'

function Main()
	if posstate==shield then
    if nobuff('º§ÈÕ') or bufftime('º§ÈÕ') > 53 then
        cast('ÑªÅ­', true)
    end
        if rage() > 44 then
            cast('¶Ü·É')
        end
		cast('¶Ü»÷')
		cast('¶ÜÑ¹')
		cast('¶ÜÃÍ')
		cast('13044')
		cast('13059')
		cast('13060')
	end

	if posstate==sword then
    if nobuff('º§ÈÕ') or bufftime('º§ÈÕ') > 53 then
        cast('ÑªÅ­', true)
    end
        if tnombuff('Á÷Ñª') or tbufftime('Á÷Ñª') < 2 then
            cast('Õ¶µ¶')
        end
       if tmbufftime('Á÷Ñª') > 16 then
	cast('ÉÁµ¶')
        end
        if nobuff( '·ÖÒ°') or rage() < 15 then
            cast('¾øµ¶')
        end
		cast('½Ùµ¶')
        if rage() < 5 then
            cast('¶Ü»Ø')
        end
	end
end