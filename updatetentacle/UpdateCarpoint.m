<<<<<<< HEAD
%ʵ�ֳ���ĸ���
%����ǰ����x0��y0�������º󣺣�x1��y1��
%dx,dy��Ϊ����ֵ����Ҫ���ݴ����Ž��з���
function [x1,y1]=UpdateCarpoint(x0,y0,dx,dy,k)
if k<41
    x1=x0-dx;
    y1=y0+dy;
else
    x1=x0+dx;
    y1=y0+dy;
end
=======
%ʵ�ֳ���ĸ���
%����ǰ����x0��y0�������º󣺣�x1��y1��
%dx,dy��Ϊ����ֵ����Ҫ���ݴ����Ž��з���
function [x1,y1]=UpdateCarpoint(x0,y0,dx,dy,k)
if k<41
    x1=x0-dx;
    y1=y0+dy;
else
    x1=x0+dx;
    y1=y0+dy;
end
>>>>>>> a02ee7f8f585e25fda47f9f8a2402b89b8a5ddb7
end