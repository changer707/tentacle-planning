%���k������ִ��0.1s���λ��
%���룺�ٶ�v��������k
%�����λ������dx��dy
function [dx,dy,the_k]=IndexCarpoint(v,k,r)
if k==41
    dx=0;
    dy=0.1*v;
else
    L=0.1*v;
    the_k=L./r(k);%����ֵ
    %dx��dy��Ϊ����ֵ
    dx=r(k)-r(k).*cos(the_k);
    dy=r(k).*sin(the_k);
end
end
