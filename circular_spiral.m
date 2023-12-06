clc,clear;
close all;

r=1; %r越小，圆环越细
R=8;

theta=pi/2; %控制显示圆环的周长

%% 绘制圆环面
jndu=linspace(0,theta,30);
[u,v]=meshgrid(jndu);
jndu_1=linspace(0,2*pi,30);
[m,w]=meshgrid(jndu_1);
x=(R+r*cos(w)).*cos(u); %注意点乘
y=(R+r*cos(w)).*sin(u);
z=r*sin(w);
axes('view',[-37.5,30]) %设置方位角
hs=surface(x,y,z);
axis equal;
hold on;

hs.EdgeColor='#B0A8B9'; %使网格线的颜色变为灰色
hs.FaceColor=[1,1,1]; %网格线的颜色为白色

%% 绘制圆环螺旋线
aaerfa=linspace(0,theta,1000);
n=1; %数字越小，代表螺距越大
x_1=(r*cos(n*aaerfa)+R).*cos(aaerfa);
y_1=(r*cos(n*aaerfa)+R).*sin(aaerfa);
z_1=r*sin(n*aaerfa);
plot3(x_1,y_1,z_1,'k','LineWidth',2);
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');

hold off;
