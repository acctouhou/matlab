function [ final] = ccb( tt,ss )
tt=reshape(tt,[ss,ss,17]);
    for i=2:ss-1
    for j=2:ss-1
        t1=g_8( tt,i,j,1);
        t2=g_8( tt,i,j,2);
        t3=g_8( tt,i,j,3);
        t4=g_8( tt,i,j,4);
        t5=g_8( tt,i,j,5);
        t6=g_8( tt,i,j,6);
        t7=g_8( tt,i,j,7);
        t8=g_8( tt,i,j,8);
        t9=g_8( tt,i,j,9);
        t10=g_8( tt,i,j,10);
        t11=g_8( tt,i,j,11);
        t12=g_8( tt,i,j,12);
        t13=g_8( tt,i,j,13);
        t14=g_8( tt,i,j,14);
        t15=g_8( tt,i,j,15);
    end
    end
    tt=tt(2:ss-1,2:ss-1,:);
    final=cat(3,tt,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15);
    final(30:98,1:64,1)=987;
    final=reshape(final,[(ss-2)*(ss-2),137]);
    final(final(:,1)==987,:)=[];

end

