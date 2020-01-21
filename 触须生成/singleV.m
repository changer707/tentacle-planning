%ʵ���Ե�(W,H)Ϊ������ɴ���
%���������Ҫ���и���
%���룺������㣨W,H������ת�Ƕ�rotate_the������˳����
%������뾶��r���ٶ�V
function [r,V]=singleV(W,H,rotate_the)
% q=1/80;
n=16;     %16���ٶȼ�
f=(1.2*2+pi)/2;  %��һ���ٶȼ��������Ĵ����Ӧ����
p=1.15;

r=[];%����뾶��
V=[];%�ٶȼ�
l=[];%���뻡����
themax=[];%�������Ƕȼ�


%16���ٶȼ��ٶ�
for j=1:16
    Vs=0.25;
    Ve=10;
    q(j)=(j-1)/(n-1);
    V(j)=Vs+(q(j)^1.2)*(Ve-Vs);     %q^1.2���ã�ʹ���ټ�������һЩ
end

%ÿ���ٶȼ���������
for j=1:1  %%%%%%%%%%%%%%%
    V=V(j);
    L=8+33.5*(q(j)^1.2);
    Rj=L/(f*(1-q(j)^0.9)); %����ഥ��İ뾶
 %��뾶   
    for k=1:81
        if k<41
            r(k)=(p^(k-1))*Rj;  % p^(k-1)���ã�ʹС���ʶζ�����������ʶβ�����ɢ
        elseif k==41
            r(k)=inf;
        else
            r(k)=(-1)*(p^(k-42))*Rj; %��Ӧ��0-80ʱ�ģ�k-41��
        end
    end
   %�㻡����Ӧ�����Ƕ� 
    for k=1:81
        if k<=41
            l(k)=L+20*sqrt((k-1)/40);      %����
            themax(k)=l(k)/r(k);           %������Ӧ�ĽǶ�
        else
            l(k)=L+20*sqrt((k-42)/40);
            themax(k)=l(k)/abs(r(k));
        end
    end
    
    %ͼ��ֿ�
%     subplot(4,4,j);
    title([num2str(V) 'm/s']);
    xlabel('X��/m');
    ylabel('Y��/m');
    axis([-40,40,-40,40])
    
    hold on
    for k=1:81
        if k<41
            the=(pi/2-themax(k)):2*pi/36000:pi/2;  %ȡ����Ҫ�࣬�����ᵼ�����߿��������Գ�
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W;
            [x1,y1]=TentacleRotate(x,y,W,H,rotate_the);
            plot(x1,y1);
        elseif k==41        %�м�һ��Ϊֱ��
            y=0+H:0.01:l(k)+H;
            x=0+W;
            [x1,y1]=TentacleRotate(x,y,W,H,rotate_the);
            plot(x1,y1,'-b');
        else
            the=0.5*pi:2*pi/36000:(0.5*pi+themax(k));
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W; %��Ϊr����ʱ���������࣬���������¹�ʽһ�������÷�������
            [x1,y1]=TentacleRotate(x,y,W,H,rotate_the);
            plot(x1,y1);
        end
    end
   text(W,H,['(',num2str(W),',',num2str(H),')']);
    hold off
end
end
