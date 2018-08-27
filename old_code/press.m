function [] = press( name )

a=importdata(name ,' ',9);
b=a.textdata
fid =fopen(name, 'w');
for i=1:8
    fprintf(fid,'%s',b{i});
    fprintf(fid,'\n');
end
fprintf(fid,'%sc_5',b{9});
fprintf(fid,'\n');
c=a.data;
[x,y]=size(c);
for i=1:x
    xx=c(i,8);
    yy=c(i,9);
    zz=c(i,10);
    xy=c(i,11);
    yz=c(i,12);
    xz=c(i,13);
    c(i,15)=(xy^2+yz^2+xz^2+((xx-yy)^2+(xx-zz)^2+(yy-zz)^2)/6);
    fprintf(fid,'%d ',c(i,:));
    fprintf(fid,'\n');
end
fclose(fid);


end

