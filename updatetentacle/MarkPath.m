%��¼ÿ�δ���Ĺ켣
%���룺�뾶��r��������k����ת���ģ����㣩����W,H���� �ٶ�V ����ת��rotate_the
function [ ]=MarkPath(r,k,W,H,V,rotate_the)
L=0.1*V;
the_k=L./r(k);
        if k<41
            the=(pi/2-the_k):2*pi/36000:pi/2;  %ȡ����Ҫ�࣬�����ᵼ�����߿��������Գ�
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W;
           [x1,y1]=TentacleRotate(x,y,W,H,rotate_the);
            plot(x1,y1,'r');
        elseif k==41        %�м�һ��Ϊֱ��
            y=0+H:0.01:l(k)+H;
            x=0+W;
            [x1,y1]=TentacleRotate(x,y,W,H,rotate_the);
            plot(x1,y1,'-r');
        else
            the=0.5*pi:2*pi/36000:(0.5*pi+the_k);
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W; %��Ϊr����ʱ���������࣬���������¹�ʽһ�������÷�������
            [x1,y1]=TentacleRotate(x,y,W,H,rotate_the);
            plot(x1,y1,'r');
        end
   
%    text(W,H,['(',num2str(W),',',num2str(H),')']);
  
end