clear;
clc;
x0=0;y0=0;

k=25;
[r,V]=singleV(x0,y0,0);
clf;
[dx,dy,the_k]=IndexCarpoint(V,k,r);
[x1,y1]=UpdateCarpoint(x0,y0,dx,dy,k);
rotate_the=Get_Rotatethe(y1,r,k);
MarkPath(r,k,the_k,x0,y0);
[r,V]=singleV(x1,y1,rotate_the);