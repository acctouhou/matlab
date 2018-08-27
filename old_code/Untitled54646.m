clc;
clear;
format long e
%%%%%%%%%%%%%%%%
%%%%%%%%%%%%
h = figure( 1 ) ;
for i=1:7
filename=[ num2str(i*10) 'nm.txt']; 
a=importdata(filename,'	',2);
a=a.data;
X=a(:,1);
Y=a(:,2);
plot(X,Y)
xlabel('πq¿£(V)');
ylabel('πq¨y(I)');
axis([-inf, inf, 0, inf]);
title( [ 'I-V  curve  ' num2str( i*10 ) 'nm' ] );
saveas( h , [ ,num2str( i ) , '.png' ] );
aaa=diff(Y)./ diff(X)
temp=mean(aaa(80   
:99));
final(i)=temp;
end