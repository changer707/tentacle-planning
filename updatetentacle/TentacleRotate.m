<<<<<<< HEAD
%ʵ�������ƣ�W,H)��ת�Ƕ�rotate_the��
%��תǰ����x0��y0������ת�󣺣�x1��y1��
%�ο���https://blog.csdn.net/Bryan_QAQ/article/details/78805201
function [x1,y1]=TentacleRotate(x0,y0,W,H,rotate_the)
x1=(x0-W).*cos(rotate_the)-(y0-H).*sin(rotate_the)+W;%.*cos(rotate_the)+H.*sin(rotate_the);
y1=(x0-W).*sin(rotate_the)+(y0-H).*cos(rotate_the)+H;%.*cos(rotate_the)+W.*sin(rotate_the);
% x1=x0.*cos(rotate_the)+y0.*sin(rotate_the)+W.*cos(rotate_the)+H.*sin(rotate_the);
% y1=-x0.*sin(rotate_the)+y0.*cos(rotate_the)-W.*sin(rotate_the)+H.*cos(rotate_the);
end

%  ��ת���ģ�W,H��
%  ƽ����M=[ 1  0  0;
%              0  1  0;
%             -W -H  1 ];
%  ��ת��M1=[ cos(the)   sin(the)   0;
%               -sin(the)  cos(the)   0;
%               0          0          1 ];
%  ���ԭ��������ϵ�� M2=[ 1  0  0;
%                          0  1  0;
%                          W  H  1 ];
%   P0=[x y 1];
=======
%ʵ�������ƣ�W,H)��ת�Ƕ�rotate_the��
%��תǰ����x0��y0������ת�󣺣�x1��y1��
%�ο���https://blog.csdn.net/Bryan_QAQ/article/details/78805201
function [x1,y1]=TentacleRotate(x0,y0,W,H,rotate_the)
x1=(x0-W).*cos(rotate_the)-(y0-H).*sin(rotate_the)+W;%.*cos(rotate_the)+H.*sin(rotate_the);
y1=(x0-W).*sin(rotate_the)+(y0-H).*cos(rotate_the)+H;%.*cos(rotate_the)+W.*sin(rotate_the);
% x1=x0.*cos(rotate_the)+y0.*sin(rotate_the)+W.*cos(rotate_the)+H.*sin(rotate_the);
% y1=-x0.*sin(rotate_the)+y0.*cos(rotate_the)-W.*sin(rotate_the)+H.*cos(rotate_the);
end

%  ��ת���ģ�W,H��
%  ƽ����M=[ 1  0  0;
%              0  1  0;
%             -W -H  1 ];
%  ��ת��M1=[ cos(the)   sin(the)   0;
%               -sin(the)  cos(the)   0;
%               0          0          1 ];
%  ���ԭ��������ϵ�� M2=[ 1  0  0;
%                          0  1  0;
%                          W  H  1 ];
%   P0=[x y 1];
>>>>>>> a02ee7f8f585e25fda47f9f8a2402b89b8a5ddb7
%   P1=[x1 y1 1] = P0*M*M1*M2;