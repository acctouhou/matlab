function [ t ] = g_8( tt,i ,j,n)
        t(i-1,j-1,1)=tt(i+1,j,n);
        t(i-1,j-1,2)=tt(i+1,j-1,n);
        t(i-1,j-1,3)=tt(i,j-1,n);
        t(i-1,j-1,4)=tt(i-1,j-1,n);
        t(i-1,j-1,5)=tt(i-1,j,n);
        t(i-1,j-1,6)=tt(i-1,j+1,n);
        t(i-1,j-1,7)=tt(i,j+1,n);
        t(i-1,j-1,8)=tt(i+1,j+1,n);
end

