%����ÿ��������������Ĵ���ĽǶȣ�����˳����
function the_k=IndexThe_k(V,r)
L=0.1*V;
the_k=[];
for k=1:81
    if k<41
        the_k(k)=L./r(k);
    elseif k==41
        the_k(k)=0;
    else
        the_k(k)=-L./r(k);
    end
end