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
for j=1:1%%%%%%%%%%%%%%%
    L=8+33.5*(q(j)^1.2);
    Rj=L/(f*(1-q(j)^0.9)); %����ഥ��İ뾶
    
    for k=1:81
        if k<41
            r(k)=(p^(k-1))*Rj;  % p^(k-1)���ã�ʹС���ʶζ�����������ʶβ�����ɢ
        elseif k==41
            r(k)=inf;
        else
            r(k)=(-1)*(p^(k-42))*Rj; %��Ӧ��0-80ʱ�ģ�k-41��
        end
    end
    
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
    title([num2str(V(j)) 'm/s']);
    xlabel('Y��/m');
    ylabel('X��/m');
    axis([-15,15,-3,60])
    
    hold on
    for k=1:81
        if k<41
            the=(pi/2-themax(k)):2*pi/36000:pi/2;  %ȡ����Ҫ�࣬�����ᵼ�����߿��������Գ�
            x=r(k)*cos(the);
            y=r(k)*sin(the)-r(k);
            plot(y,x);
        elseif k==41        %�м�һ��Ϊֱ��
            x=0:0.01:l(k);
            y=0;
            plot(y,x,'-b');
        else
            the=0.5*pi:2*pi/36000:(0.5*pi+themax(k));
            x=r(k)*cos(the);
            y=r(k)*sin(the)-r(k); %��Ϊr����ʱ���������࣬���������¹�ʽһ�������÷�������
            plot(y,x);
        end
    end
    hold off
end
