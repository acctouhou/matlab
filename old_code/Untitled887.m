b=importdata('def.txt',' ',1);
b=b.data;

for i=1:2600
    xx=b(i,7);                                                                        
    yy=b(i,8);
    zz=b(i,9);
    xy=b(i,10);
    yz=b(i,11);
    xz=b(i,12);
   stress(i)=(0.5*((xx-yy)^2+(yy-zz)^2+(xx-zz)^2+6*(xy^2+yz^2+xz^2)))^0.5; 
end


for i=1:13
    filename=[ num2str(i) '.png'];
    plot(b(:,i));
    print(gcf,'-dpng',filename)
end
i=14;
filename=[ num2str(i) '.png'];
plot(-b(:,13),stress)
print(gcf,'-dpng',filename)

%filename=['x_disp' num2str(i) '.png']; 
%print(gcf,'-dpng',filename)