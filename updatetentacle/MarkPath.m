%实现每次触须轨迹的记录
function [ ]=MarkPath(r,k,the_k,W,H)

        if k<41
            the=(pi/2-the_k):2*pi/36000:pi/2;  %取样点要多，不够会导致两边看起来不对称
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W;
            plot(x,y);
        elseif k==41        %中间一条为直线
            y=0+H:0.01:l(k)+H;
            x=0+W;
            plot(x,y,'-b');
        else
            the=0.5*pi:2*pi/36000:(0.5*pi+the_k);
            y=r(k)*cos(the)+H;
            x=r(k)*sin(the)-r(k)+W; %因为r定义时有正负分类，故这里上下公式一样，不用分类讨论
            plot(x,y);
        end
   
%    text(W,H,['(',num2str(W),',',num2str(H),')']);
  
end