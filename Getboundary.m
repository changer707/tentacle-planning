function boundary=Getboundary(map)
boundary=[];
%��ȡ�߽������
%��
for i1=1:map.XYMAX+2  
    boundary=[boundary;[i1-2,-1]];
end
%��
for j1=1:map.XYMAX+2
    boundary=[boundary;[-1,j1-1]];
end
%��
for i2=1:map.XYMAX+2
    boundary=[boundary;[i2-1,map.XYMAX+1]];
end
%��
for j2=1:map.XYMAX+2
    boundary=[boundary;[map.XYMAX+1,j2-2]];
end