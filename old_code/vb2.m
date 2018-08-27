function [ z_ans ] = vb2( x,y,z,xi,yi,gd,name)
n=(gd+1)^2;
z_ans=vb(x,y,z,gd,xi,yi);
mesh(xi,yi,z_ans);
view(20,490);
z_ans=reshape(z_ans,[n,1]);
title(name)
print(gcf,'-dpng',name)
end

