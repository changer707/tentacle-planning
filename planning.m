clear;
clc;
disp('tentacles planning start!');
map.XYMAX=100; %��ͼ��С100*100
map.start=[50,0];%���
map.goal=[90,90];%�յ�

obstacle=Getboundary(map);%��ȡ��ͼ�߽������
nobstacle=50;%�ϰ�������
obstacle=GetObstacle(nobstacle,obstacle,map);%�����ͼ���ϰ�������


LINEGRID(map);%��������
hold on;
FillPlot(obstacle,'k');%�����ϰ�����

%---------A*�㷨�ҳ�ȫ��·��---------
globalpath=AStar(obstacle,map);
if length(globalpath)>=1
    plot(globalpath(:,1),globalpath(:,2),'-c','LineWidth',3);%����ȫ��·��
    hold on;
end







