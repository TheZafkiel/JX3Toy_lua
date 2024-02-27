--奇穴
QiXue = '玄黄,御龙,自强,无疆,益元,越渊,满盈,驯致,贞固,息元,饮江,祭湘君'
--其他说明
ShuoMing = ' 无  '

function Main()
    if life() < 0.3 then
        cast('笑醉狂', true)
    end

    -------------------------分割线------------------------------------
    if nobuff('无疆') or nobuff('酒中仙') then 
        fcast('酒中仙')
    end
    if nobuff('无疆') then 
        cast('棒打狗头')
    end
    if nobuff('益元')  then
        cast('龙战于野')
    end
    if nobuff('益元')  then
        cast('龙战于渊')
    end
    cast('祭湘君')
    cast('亢龙有悔')
    cast('拨狗朝天')
end