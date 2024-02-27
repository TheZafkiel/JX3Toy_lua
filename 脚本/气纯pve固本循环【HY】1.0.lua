--作者
ZuoZhe = "HY"
--奇穴
QiXue = "【白虹】【心固】【无形】【归元】【同尘】【硅步】【万物】【抱阳】【浮生】【期声】自化】【固本】"
--其他说明
ShuoMing = "固本循环，起手伤害极高，而且不用担心位移的时候掉dps的问题，方便各位红孩儿使用。精简越多收益越高。"
function Main()
   DPS()
end
function DPS()
	if  nobuff('破苍穹') or nolast('破苍穹',35)then
			cast('破苍穹')				
	end
	if  nobuff('气剑') then
			cast('万世不竭')				
	end
	if bufftime('气剑')<1.7 then
			cast('万世不竭')
	end 
	if  last('六合独尊',1.7) and nolast('紫气东来',55)then
			cast('万世不竭')				
	end
	if  last('两仪化形',1.3) and tmbuff('气竭') then
			cast('九转归一')
		if  dis()<=8 and nolast('九转归一',0.5) then
			cast('三才化生')				
		end				
	end
	cast('六合独尊')
	if last('六合独尊',1.6) then
	cast('紫气东来')
	end

	if qidian()>8 or last('四象轮回',1.5) then 
		cast('两仪化形')	
	end
	if state('站立') then
		cast('四象轮回')			
		end
	cast('太极无极')		
	end
	