%ʵ��ÿ�δ���켣�ļ�¼
function [ ]=MarkPath(r,k,the_k,W,H)

        if k<41
            the=(pi/2-the_k):2*pi/36000:pi/2;  %ȡ����Ҫ�࣬�����ᵼ�����߿��������Գ�
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W;
            plot(x,y);
        elseif k==41        %�м�һ��Ϊֱ��
            y=0+H:0.01:l(k)+H;
            x=0+W;
            plot(x,y,'-b');
        else
            the=0.5*pi:2*pi/36000:(0.5*pi+the_k);
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W; %��Ϊr����ʱ���������࣬���������¹�ʽһ�������÷�������
            plot(x,y);
        end
   
%    text(W,H,['(',num2str(W),',',num2str(H),')']);
  
end