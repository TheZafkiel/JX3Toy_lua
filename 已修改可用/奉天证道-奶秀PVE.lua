--����
ZuoZhe = "Zafkiel"
--��Ѩ
QiXue = '��¶,ʢ��,����,����,����,ɢ��ϼ,����,���,˪��,����,��ü,�ຮӳ��'
--��Ѩ[�ຮӳ��]/[��΢�ɻ�]������
--����˵��
--���޸�Ϊjx3toy����
ShuoMing = '��'
function Main()
   xiuchi()
    if life() >= 0.75 and not (target('npc')) then
        settar(player('���߿ɴ�', '��Ѫ>0.01', '����<20', '��Ѫ����', '��ϵ:�Ѻ�'))
    else
        if not (state('��Ծ')) and not (target('npc')) then
            settar(id())
        end
    end


    if (fight() and tlife() < 0.99) or tlife() < 0.8 then
        --if (state('��·') or state('�ܲ�')) and tlife() < 0.6 and not (notarget()) then
        if (state('��·') or state('�ܲ�')) and tlife() < 0.6 and not (notarget()) and qixue("�ຮӳ��") then
            cast('�ຮӳ��')
        end

        --  ��·������ӳ��
        --if (tlifevalue() < 58888 or tlife() < 0.5) and (scdtime('����Ͱ�') ~= 0 and scdtime('��ĸ����')  ~= 0 ) then
        if (tlifevalue() < 58888 or tlife() < 0.5) and (cdtime('����Ͱ�') ~= 0 and cdtime('��ĸ����')  ~= 0 ) and qixue("�ຮӳ��") then
            cast('�ຮӳ��')
        end
        --  and (cd("����Ͱ�") and cd("��ĸ����"))
        if (tlifevalue() < 58888 or tlife() < 0.3) and tlife() > 0 then
            cast('��������')
        end
        -- ���� ���ȱ�Σ����
        if (tlifevalue() < 38888 or tlife() < 0.5) and tlife() > 0 then
            cast('��ĸ����')
        end
        if (tlifevalue() < 38888 or tlife() < 0.5) and tlife() > 0 then
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
        if tnobuff('��Ԫ����', id()) and tlife() > 0.5 then
            cast('��Ԫ����')
        end
        if tnobuff('����', id()) and tlife() > 0.5 then
            cast('�������')
        end
        if (tlifevalue() > 18888 and tlife() > 0.3 and tbuff('��Ԫ����', id())) or (cdtime('����Ͱ�') ~= 0 and cdtime('��ĸ����') ~= 0 ) then
            if casting() == false then
            cast('��ѩƮҡ')
            else
            end
        end

    end

    --���߿ɴ� û��Ԫ ����Ԫ
    -- if  enemyp("�����ٷֱ�:������|������|������>0.5", "buff���:�ɴ��")
    -- xcast("���ɾ���", enemyp("�����ٷֱ�:������|������|������>0.5", "buff���:�ɴ��"))
    xcast('��Ԫ����', player('���߿ɴ�', '����<20', '�ҵ�buffʱ��:��Ԫ����<0', '��Ѫ>0.01', '����<0.5', '��ϵ:�Ѻ�'))
    xcast('��Ԫ����', player('���߿ɴ�', '����<20', '�ҵ�buffʱ��:��Ԫ����<0', '��Ѫ>0.95', '��Ѫ>0.02', '��ϵ:�Ѻ�'))
    xcast('�������', player('���߿ɴ�', '����<20', '�ҵ�buffʱ��:����<0', '��Ѫ>0.01', '��Ѫ<0.9', '��ϵ:�Ѻ�'))

-----------------------

-----------------------

end

-----------------------
function xiuchi()
    --��������3������Ѫ����0.70��ʹ��[��΢�ɻ�] �����������ʲô��
    if qixue("��΢�ɻ�") then
        local playerId, playerCount = party('���߿ɴ�', '����<20', '��Ѫ>0.01', '��Ѫ<0.70', '��ϵ:�Ѻ�')
        --if playerCount >= 3 or player('���߿ɴ�', '����<20', '��Ѫ>0.01', '��Ѫ<0.30', '��ϵ:�Ѻ�') then
        --������ĸcd ���ȵ�����Σ����  �������Ҫ�ͺ������滻
        if playerCount >= 3 or (party('���߿ɴ�', '����<20', '��Ѫ>0.01', '��Ѫ<0.30', '��ϵ:�Ѻ�') and cdtime('����Ͱ�') ~= 0 and cdtime('��ĸ����')  ~= 0) then
            xcast(24990, party('���߿ɴ�', '����<20', '��Ѫ>0.01', '��ϵ:�Ѻ�', '��Ѫ����'))
        end
        else
    end
end
-----------------------
