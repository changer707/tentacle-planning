<<<<<<< HEAD
%实现车点的更新
%更新前：（x0，y0）；更新后：（x1，y1）
%dx,dy均为绝对值，需要根据触须编号进行分类
function [x1,y1]=UpdateCarpoint(x0,y0,dx,dy,k)
if k<41
    x1=x0-dx;
    y1=y0+dy;
else
    x1=x0+dx;
    y1=y0+dy;
end
=======
%实现车点的更新
%更新前：（x0，y0）；更新后：（x1，y1）
%dx,dy均为绝对值，需要根据触须编号进行分类
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