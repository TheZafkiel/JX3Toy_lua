--��Ѩ
QiXue = '��¶,ʢ��,����,����,����,ɢ��ϼ,����,���,˪��,����,��ü,�ຮӳ��'
--����˵��
ShuoMing = '��'
function Main()
    if life() >= 0.75 and not (target('npc')) then
        settar(teamp('���߿ɴ�', '��Ѫ����:0.01', '����С��:20', '��Ѫ����'))
    else
        if not (state('��Ծ')) and not (target('npc')) then
            settar(id())
        end
    end

    if (fight() and ttlife() < 0.99) or ttlife() < 0.8 then
        if (state('��·') or state('�ܲ�')) and tlife() < 0.6 and not (notarget()) then
            cast('�ຮӳ��')
        end

        --  ��·������ӳ��
        if (tlifec() < 58888 or tlife() < 0.5) and (cd('����Ͱ�') and cd('��ĸ����')) then
            cast('�ຮӳ��')
        end
        --  and (cd("����Ͱ�") and cd("��ĸ����"))
        if (tlifec() < 58888 or tlife() < 0.3) then
            cast('��������')
        end
        -- ���� ���ȱ�Σ����
        if tlifec() < 38888 or tlife() < 0.5 then
            cast('��ĸ����')
        end
        if tlifec() < 38888 or tlife() < 0.5 then
            cast('����Ͱ�')
        end
        --,"��ѪС��:0.3","����С��:20"))
        -- ����Լ�Ѫ���㹻 ������ƽ̯ ��Ȼ����
        -- �������� Ȼ����� [��ĸ����][����Ͱ�]

        -- xcast("��ĸ����", )

        --[����][]
        if nobuff('��Ԫ����') then
            cast('��Ԫ����', true)
        end
        if nobuff('����') then
            cast('�������', true)
        end
        if tnombuff('��Ԫ����') and tlife() > 0.5 then
            cast('��Ԫ����')
        end
        if tnombuff('����') and tlife() > 0.5 then
            cast('�������')
        end
        if (tlifec() > 18888 and tlife() > 0.3 and tmbuff('��Ԫ����')) or (cd('����Ͱ�') and cd('��ĸ����')) then
            cast('��ѩƮҡ')
        end
    end

    --���߿ɴ� û��Ԫ ����Ԫ
    -- if  enemyp("�����ٷֱ�:������|������|������>0.5", "buff���:�ɴ��")
    -- xcast("���ɾ���", enemyp("�����ٷֱ�:������|������|������>0.5", "buff���:�ɴ��"))
    xcast('��Ԫ����', teamp('���߿ɴ�', '����С��:20', 'ûbuff:��Ԫ����', '��Ѫ����:0.01', '����С��:0.5'))
    xcast('��Ԫ����', teamp('���߿ɴ�', '����С��:20', 'ûbuff:��Ԫ����', '��ѪС��:0.95', '��Ѫ����:0.02'))
    xcast('�������', teamp('���߿ɴ�', '����С��:20', 'ûbuff:����', '��Ѫ����:0.01', '��ѪС��:0.9'))
end