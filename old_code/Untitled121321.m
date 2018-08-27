clc;
clear;
gd=99
x = 1*rand(100, 1);
y = 1*rand(100, 1);
tx=(max(x)-min(x))/gd;
ty=(max(y)-min(y))/gd;
[xi, yi] = meshgrid(min(x):tx:max(x),min(y):ty:max(y));
z=xi+yi

%[xi, yi] = meshgrid(0:0.01:9.99, 0:0.01:9.99);  
%zi = griddata(x, y, z, xi, yi,'natural');
zi=vb(x,y,z)
figure; mesh(xi, yi, zi); view(2); axis image
%mesh(xi,yi,zi)

%hold on; plot3(x, y, z, 'o'); hold off	% 畫出資料點
%axis tight; hidden off;
%figure; mesh(xi, yi, zi); view(2); axis image	% 曲面俯視圖
%hold on; plot3(x, y, z, 'o'); hold off		% 畫出資料點
%k = convhull(x, y);
%line(x(k), y(k), 10*ones(1,length(k)), 'color', 'r');	% Add convex hull


%https://cn.mathworks.com/help/matlab/ref/griddata.html


