function [ zi ] = vb( x,y,z,gd,xi,yi)
zi = griddata(x, y, z, xi, yi,'nearest');
%mesh(xi,yi,zi)
%
%figure; mesh(xi, yi, zi); view(2); axis image
end

