function [typeflag,inc]=FINDTYPE(m,open,close)
typeflag=0;
inc=0;
%����openΪ��
if isempty(open)
    typeflag=2;
end

%����Ƿ���close��(close��Ϊ�գ�
for i=1:length(close(:,1))
    if isequal( m(1:2) , close(i,1:2) )
        typeflag=1;
        return;
    end
end

%����Ƿ���open��
for j=1:length(open(:,1))
    if isequal( m(1:2) , open(j,1:2) )
        typeflag=3;%��open��
        inc=j;
        return;
    else
        typeflag=2;%����open��
    end    
end
end

