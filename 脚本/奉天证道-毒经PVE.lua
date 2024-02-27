
--奇穴
QiXue = '尻尾,无常,黯影,虫兽,桃僵,不鸣,蛇蜒,祭礼,蛇悉,蛊虫狂暴,荒息,啖灵'
--其他说明
ShuoMing =
    '蝎心：2运功 必读\n 蛇影：2伤害 必读\n灵蛊：3伤害\n百足：2CD，2伤害\n蛊虫献祭： 2调息\n其他自己搭配就行。'

function Main()
	   if nopet('灵蛇') then
		cast('灵蛇引')
	      end
	   if tnombuff('夺命蛊') or tmbufftime('夺命蛊') < 5 then
		cast('灵蛊')
	      end
	   if qixue('桃僵') and mana() < 0.8 then
		cast('灵蛊')
	      end
	cast('凤凰蛊')
	cast('蛊虫献祭')
	   if buff('灵蛇献祭') then
		cast('蛊虫狂暴')
	      end
               fcast('攻击')
               fcast('幻击')
	cast('百足')
	   if tnombuff('蛇影') or tbufftime('蛇影') < 2 then
		cast('蛇影')
	      end
	cast('蝎心')
	cast('蟾啸')
	cast('千丝')
end