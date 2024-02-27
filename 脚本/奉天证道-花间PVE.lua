--奇穴
QiXue = '弹指,雪中行,倚天,焚玉,青歌,青冠,清流,雪弃,生息,梦歌,踏歌,涓流'
--其他说明
ShuoMing =
    '阳明指：? ?运功时间 x 2 ， 伤害 4% ，会心 3%\n商阳指：?? 招式效果 x 2 ,??  效果持续时间 + 1 ， 施展范围 x 1\n兰摧玉折：调息时间 x 2 ， 效果持续时间 + 3 ， 运功时间 - 0.25\n钟林毓秀：运功时间 x 3 ， 效果持续时间 + 3?\n芙蓉并蒂：招式效果 x 1 ,??  伤害 5% ，伤害 4%\n快雪时晴：招式效果 x 1 ,?  ?伤害 4% ，伤害 3% ，伤害 5%\n'
H_T = 1
function Main()
    -- print("H_T",H_T)
    if nofight() then
        if nobuff('清心静气') then
            cast('清心静气', true)
        end
        H_T = 1
    end
    if mana() < 0.4 then
        cast('碧水滔天', true)
    end

    if nobuff('弹跳') and nocd('扶摇直上') then
        cast('扶摇直上')
    end
    -- if isme()  then
    --     cast('水月无间', true)
    -- end
    if nocd('乱洒青荷') then
        H_T = 1
    end
    if H_T == 1 then
        cast('乱洒青荷')
        if cd('乱洒青荷') then
            cast('水月无间', true)
        end
        if tnombuff('兰摧玉折') and (bufftime('乱洒青荷') >= 8 or cd('乱洒青荷')) then
            cast('阳明指')
        end
        if tnombuff('商阳指') then
            cast('商阳指')
        end
        if tbuff('兰摧玉折') and tbuff('钟林毓秀') then
            cast('玉石俱焚')
        end

        if last('玉石俱焚', 3) then
            H_T = 2
        end
    end
    if H_T == 2 then
        if tnombuff('兰摧玉折') then
            cast('兰摧玉折')
        end
        if tnombuff('商阳指') then
            cast('商阳指')
        end
        if tnombuff('钟林毓秀') and tmbufftime('商阳指') >= 16.5 then
            cast('钟林毓秀')
        end
        cast('快雪时晴')

        if last('快雪时晴', 3) and tmbuff('钟林毓秀') then
            H_T = 3
        end
    end
    if H_T == 3 then
        if tmbufftime('兰摧玉折') < 4 or tmbufftime('钟林毓秀') < 4 then
            cast('芙蓉并蒂')
        end
        if nocd('芙蓉并蒂') then
            cast(' 快雪时晴')
        end
        if tmbufftime('兰摧玉折') < 9 then
            cast('玉石俱焚')
        end
        if cd('玉石俱焚') or tnombuff('钟林毓秀') then
            H_T = 2
        end
        cast('快雪时晴')
    end
end