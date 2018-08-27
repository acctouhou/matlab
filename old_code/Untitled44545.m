clc;
clear;
format long e


 A = importdata('tdamp.txt',' ',1);

 strain=-A.data(:,1)
 
 xx=A.data(:,8)
 yy=A.data(:,9)
 zz=A.data(:,10)
 xy=A.data(:,11)
 yz=A.data(:,12)
 xz=A.data(:,13)
 for i=1:200
 stress(i)=(xy(i)^2+yz(i)^2+xz(i)^2+((xx(i)-yy(i))^2+(xx(i)-zz(i))^2+(yy(i)-zz(i))^2)/6);
 end
    plot(strain,xx,'-or','LineWidth',2,'MarkerEdgeColor','r',...
        'MarkerFaceColor','r','MarkerSize',5),hold on
    
    axis square
    ylim([0 100])
    xlim([0.00 0.2])
    set(gca,'LineWidth',2,'FontSize',24,'FontWeight','normal','FontName','Times')
    set(get(gca,'xlabel'),'String','Strain','FontSize',32,'FontWeight','bold','FontName','Times')
    set(get(gca,'ylabel'),'String','Stress (GPa)','FontSize',32','FontWeight','bold','FontName','Times')
    set(gcf,'Position',[1 1 round(1000) round(1000)])