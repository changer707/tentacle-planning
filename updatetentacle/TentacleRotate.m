%ʵ�������ƣ�W,H)��ת�Ƕ�rotate_the��
%��תǰ����x0��y0������ת�󣺣�x1��y1��
%�ο���https://blog.csdn.net/Bryan_QAQ/article/details/78805201
function [x1,y1]=TentacleRotate(x0,y0,W,H,rotate_the)
x1=(x0-W).*cos(rotate_the)-(y0-H).*sin(rotate_the)+W;
y1=(x0-W).*sin(rotate_the)+(y0-H).*cos(rotate_the)+H;
end