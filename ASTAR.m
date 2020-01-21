function globalpath=ASTAR(obstacle,map)

open=[];
close=[];
globalpath=[];
findflag=false; %�ж��Ƿ��ҵ�·��

%open=[x,y,F,G,parentx,parenty]
open(1,:)=[map.start(1),map.start(2),0+h(map.start,map.goal),0,map.start(1),map.start(2)];
next=MOTIONMODEL();

while ~findflag
    if isempty(open(:,1))
       % findflag=true;
        disp('no path!');
        return;
    end
    
    [inopenflag,inline]=ISINOPEN(map.goal,open);%�ж�Ŀ����Ƿ���open��
    if inopenflag
        findflag=true;
        disp('find goal');
        close=[open(inline,:);close];%���ҵ���open�з���close��
        break;
    end
    
    [B,I]=sort(open(:,3));%����
    open=open(I,:);%��openҲ��F����������
    
    close=[open(1,:);close];%��F��С�ĵ��open����close
    current=close(1,:);
    open(1,:)=[];%����close�ĵ�Ҫ��ʱ��open���Ƴ�
    
    %���ζ�ÿ�����ڽڵ�������
    for i=1:length(next(:,1))
        m=[current(1)+next(i,1),current(2)+next(i,2),0,0,0,0];
        m(4)=current(4)+next(i,3);%G
        m(3)=m(4)+h(m(1:2),map.goal);%F
        
        if ISOBSTACLE(m,obstacle)
            continue;
        end
        
        %typeflag==1,��close�У�
        %typeflag==2,����open�У�
        %typeflag==3,�Ѿ���open�У�
        [typeflag,inc]=FINDTYPE(m,open,close);
        
        if typeflag==1  %��close��
            continue;
        
        elseif typeflag==2 %����open��
            m(5:6)=[current(1),current(2)];
            open=[open;m];
        
        else  %�Ѿ���open��
           if m(3)<open(inc,3)  %����ǰ�ڵ���Ϊ���ڵ���ã��������ڵ�
               m(5:6)=[current(1),current(2)];  
               open(inc,:)=m;%%%%%%����open�еĶ�Ӧ�еĸ��ڵ㣬��Ϊʵ��ɸѡ��ǰ�ڵ�����open��ѡ��
           end
        end
        
    end
    

end
%   ��������
    LINEGRID(map);
    hold on;
    %����close��open�ڵ�
    FillPlot(close,'g');
    hold on;
    FillPlot(open,'r')
    hold on;
    
globalpath=GETPATH(close,map.start);
end
        
        
            
        
        
        
    
  
    
    
    
    
    
    
    
    
    
    