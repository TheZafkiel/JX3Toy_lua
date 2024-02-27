ScriptInfo = {
{ "作者", "Zafkiel" },
{ "奇穴 盾", "蔚风 秋鸿 争簇 殊曲 谪仙 平吟 笙簧 绝唱 相依 庄周梦 掷杯 桑柔" },
{ "奇穴 奶", " 蔚风 秋鸿 争簇/枕流 殊曲 谪仙 自赏 寸光阴 兼山 相依 棋宫 掷杯 无尽藏" },
{ "秘籍", "常规秘籍" },
{ "说明", "一些说明信息" },
{ "小节标题", "内容" },
}

function Main()
   DPS()
end
function DPS()

--如果在马上,下马
	if horse() then
		cbuff("骑御")
	end
    
    if notarget() or target('boss') then
        settar(teamp('距离小于:20'))
    end
    if buff('孤影化双') then
        cast('疏影横斜', true)
        cast('云生结海', true)
    end
    if buff('孤影化双') and bufftime('孤影化双') <= 1 then
        fcast('孤影化双')
    end
    if cn('疏影横斜') == 3 then
        cast('移形换影')
        cast('疏影横斜', true)
    end
    if qixue('无尽藏') then
        fcast('阳春白雪')
    end

    if qixue('自赏') and qixue('寸光阴') then
        if tmbuff('角') and tmbuff('商') then
            cast('宫')
            if tlife() > 0.95 and last('宫', 2)  then
                settar(teamp('距离小于:20', '气血最少', '气血大于:0.01', '我的buff层数:角>0'))
            end
        end
        if tnombuff('角') then
            cast('角')
        end
        if tnombuff('商') then
            cast('商')
        end
    end
    if nolast('角', 15) then
        cast('角')
    end
    if kuaitaixue == 1 and qixue('谪仙') then
        settar(teamp('气血最少', '距离小于:20'))
        kuaitaixue = 0
    end
    if tstate('重伤') then
        settar(teamp('没状态:重伤', '距离小于:20'))
    end
    if tlife() < 0.93 and otaprog('徵') < 0.34 and qixue('谪仙') then
        fcast('徵')
        kuaitaixue = 1
    end
    if dis() > 20 then
        settar(teamp('没buff:梅花三弄|落梅', '距离小于:20'))
    end
    if tlifec() > 150000 and tnombuff('角') then
        cast('角')
    end
    if tmbuff('梅花三弄') or tmbuff('落梅') then
        settar(teamp('没buff:梅花三弄|落梅', '距离小于:20'))
        if dis() > 20 then
            settar(teamp('距离小于:20'))
        end
    end

    if tnombuff('梅花三弄') and tnombuff('落梅') and qixue('庄周梦') then
        cast('梅花三弄')
    end
    cast('羽')
	

end