%a=importdata('deff.txt',' ',1);
%b=a.data
%plot(b(:,1),b(:,2))
%plot(b(:,1),b(:,3))
%plot(b(:,1),b(:,4))
clc;
clear;
format long e


    A = importdata('cyka_300.txt',' ',1);
    strain = -A.data(:,1);
    stress = -A.data(:,2:7);
    stress_2=-A.data(:,8:13)
    for i=1:200
        xx=stress(i,1)
        yy=stress(i,2)
        zz=stress(i,3)
        xy=stress(i,4)
        yz=stress(i,5)
        xz=stress(i,6)
        stress(i,7)=(xy^2+yz^2+xz^2+((xx-yy)^2+(xx-zz)^2+(yy-zz)^2)/6);
        xx=stress_2(i,1)
        yy=stress_2(i,2)
        zz=stress_2(i,3)
        xy=stress_2(i,4)
        yz=stress_2(i,5)
        xz=stress_2(i,6)
        stress_2(i,7)=(xy^2+yz^2+xz^2+((xx-yy)^2+(xx-zz)^2+(yy-zz)^2)/6);
    end
    
 cc=diff(stress_2(:,7))./diff(strain);
   [a,b]=max(cc)
   tt=mean(cc(1:35))
   x = linspace(0,0.1)
   fun=-tt*0.002+tt*x
   %plot(x,fun)
    
    plot(strain,stress(:,1),'-or','LineWidth',2,'MarkerEdgeColor','r',...
        'MarkerFaceColor','r','MarkerSize',5),hold on
    plot(strain,stress(:,7),'-og','LineWidth',2,'MarkerEdgeColor','g',...
        'MarkerFacecolor','g','MarkerSize',5),hold on
   % plot(strain,stress_2(:,7),'-og','LineWidth',2,'MarkerEdgeColor','b',...
      %  'MarkerFacecolor','b','MarkerSize',5),hold on
    plot(x,fun,'-ob','LineWidth',2,'MarkerEdgeColor','b',...
        'MarkerFacecolor','b','MarkerSize',5),hold on
    axis square
    ylim([0 7])
    xlim([0 0.2])
    set(gca,'LineWidth',2,'FontSize',24,'FontWeight','normal','FontName','Times')
    set(get(gca,'xlabel'),'String','Strain','FontSize',32,'FontWeight','bold','FontName','Times')
    set(get(gca,'ylabel'),'String','Stress (GPa)','FontSize',32','FontWeight','bold','FontName','Times')
    set(gcf,'Position',[1 1 round(1000) round(1000)])
    
    % Export the figure to a tif file
    %exportfig(gcf,strrep(fname,'.def1.txt','.tif'),'Format','tiff',...
        %'Color','rgb','Resolution',300)   
   
   
   