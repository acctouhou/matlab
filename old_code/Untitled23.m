clc;
clear;
format long e


 A = importdata('1123.txt',' ',1);
 %time=A.data(:,1)
 %temp=A.data(:,2)
 %pe=A.data(:,4)
 strain=-A.data(:,1)
 
 xx=A.data(:,2)
 yy=A.data(:,3)
 zz=A.data(:,4)
 xy=A.data(:,5)
 yz=A.data(:,6)
 xz=A.data(:,7)
 for i=1:200
 stress(i)=(xy(i)^2+yz(i)^2+xz(i)^2+((xx(i)-yy(i))^2+(xx(i)-zz(i))^2+(yy(i)-zz(i))^2)/6);
 end
    plot(strain,stress,'-or','LineWidth',2,'MarkerEdgeColor','r',...
        'MarkerFaceColor','r','MarkerSize',5),hold on
     plot(strain,-xx,'-ob','LineWidth',2,'MarkerEdgeColor','b',...
                'MarkerFaceColor','b','MarkerSize',5),hold on
    axis square
    ylim([0 10])
    xlim([0.00 0.2])
    set(gca,'LineWidth',2,'FontSize',24,'FontWeight','normal','FontName','Times')
    set(get(gca,'xlabel'),'String','Strain','FontSize',32,'FontWeight','bold','FontName','Times')
    set(get(gca,'ylabel'),'String','Stress (GPa)','FontSize',32','FontWeight','bold','FontName','Times')
    set(gcf,'Position',[1 1 round(1000) round(1000)])