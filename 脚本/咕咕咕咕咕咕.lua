ScriptInfo = {
{ "����", "Zafkiel" },
{ "��Ѩ ��", "ε�� ��� ���� ���� ���� ƽ�� �ϻ� ���� ���� ׯ���� ���� ɣ��" },
{ "��Ѩ ��", " ε�� ��� ����/���� ���� ���� ���� ����� ��ɽ ���� �幬 ���� �޾���" },
{ "�ؼ�", "�����ؼ�" },
{ "˵��", "һЩ˵����Ϣ" },
{ "С�ڱ���", "����" },
}

function Main()
   DPS()
end
function DPS()

--���������,����
	if horse() then
		cbuff("����")
	end
    
    if notarget() or target('boss') then
        settar(teamp('����С��:20'))
    end
    if buff('��Ӱ��˫') then
        cast('��Ӱ��б', true)
        cast('�����ả', true)
    end
    if buff('��Ӱ��˫') and bufftime('��Ӱ��˫') <= 1 then
        fcast('��Ӱ��˫')
    end
    if cn('��Ӱ��б') == 3 then
        cast('���λ�Ӱ')
        cast('��Ӱ��б', true)
    end
    if qixue('�޾���') then
        fcast('������ѩ')
    end

    if qixue('����') and qixue('�����') then
        if tmbuff('��') and tmbuff('��') then
            cast('��')
            if tlife() > 0.95 and last('��', 2)  then
                settar(teamp('����С��:20', '��Ѫ����', '��Ѫ����:0.01', '�ҵ�buff����:��>0'))
            end
        end
        if tnombuff('��') then
            cast('��')
        end
        if tnombuff('��') then
            cast('��')
        end
    end
    if nolast('��', 15) then
        cast('��')
    end
    if kuaitaixue == 1 and qixue('����') then
        settar(teamp('��Ѫ����', '����С��:20'))
        kuaitaixue = 0
    end
    if tstate('����') then
        settar(teamp('û״̬:����', '����С��:20'))
    end
    if tlife() < 0.93 and otaprog('��') < 0.34 and qixue('����') then
        fcast('��')
        kuaitaixue = 1
    end
    if dis() > 20 then
        settar(teamp('ûbuff:÷����Ū|��÷', '����С��:20'))
    end
    if tlifec() > 150000 and tnombuff('��') then
        cast('��')
    end
    if tmbuff('÷����Ū') or tmbuff('��÷') then
        settar(teamp('ûbuff:÷����Ū|��÷', '����С��:20'))
        if dis() > 20 then
            settar(teamp('����С��:20'))
        end
    end

    if tnombuff('÷����Ū') and tnombuff('��÷') and qixue('ׯ����') then
        cast('÷����Ū')
    end
    cast('��')
	

end