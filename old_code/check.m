function [ a ] = check( a )
b=sum(isnan(a),2);

a(b>0,:)=[];

end

