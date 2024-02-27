--奇穴
QiXue = '海隅 扶桑 羽彰 清源 太息 伞意 罔象 怅归 藏锋 驰行 梦悠 濯流'
--其他说明
ShuoMing = '天上起手或者地面起手随意'

function Main()
    if nobuff('翼绝云天') then
        cast('翼绝云天')
    end

    ------------双溟海天上掌法宏（手动鸟技能）
    if buff('浮游天地') then
        cast('物化天行')
        if buff('太息') or buff('伞意') then
            cast('振翅图南')
        end

        cast('溟海御波')
        cast('海运南冥')
        cast('逐波灵游')
        cast('物化天行')
        if cd('逐波灵游') and cd('溟海御波') and cd('海运南冥') then
            cast('浮游天地·落地')
        end
    else
        if (nocd('逐波灵游') or cdtime('逐波灵游') < 2) and nocd('溟海御波') and nocd('海运南冥') then
            cast('浮游天地')
        end
        if buff('太息') or buff('伞意') then
            cast('振翅图南')
        end
        cast('木落雁归')
        cast('跃潮斩波')
        cast('击水三千')
    end
end