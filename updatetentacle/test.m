clear;
clc;
%���
x0=0;
y0=0;
rotate_the=0;%��¼��ǰ�����ƫת��

[r,V]=singleV(x0,y0,rotate_the);
k=25;
clf;
%��ȡ��һ��λ�õ����꣨x1��y1��
[dx,dy,the_k]=IndexCarpoint(V,k,r);
[x1,y1]=UpdateCarpoint(x0,y0,dx,dy,k);
%��¼�켣
MarkPath(r,k,x0,y0,V,rotate_the);
%������ת�Ƕ�rotate_the
rotate_thek=IndexThe_k(V,r);%ÿ�����루0.1s�������봥��֮��ļнǼ�
rotate_the=rotate_the+rotate_thek(k);
[r,V]=singleV(x1,y1,rotate_the);









