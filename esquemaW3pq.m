function [ f ] = esquemaW3pq( f,p,q,lvl )

for ilvl=1:lvl
    f1=zeros(1,2*length(f)-9);
    f1(1:2:end)=f(3:end-2);
    f1(2:2:end-1)=0.5*f(3:end-3)+0.5*f(4:end-2);
    f=f(1:end-2)-2*f(2:end-1)+f(3:end);
    l31=-f(1:end-3)+3*f(2:end-2);
    l22=f(2:end-2)+f(3:end-1);
    l13=3*f(3:end-1)-f(4:end);
%     loglog(max(abs(f(1:end-2)./f(2:end-1)),abs(f(3:end)./f(2:end-1)))); pause(1);
% sum(WH(p,3/8,WH(q,1/2,l13,l31),l22)==0)
    f1(2:2:end-1)=f1(2:2:end-1)-1/16*WH(p,3/8,WH(q,1/2,l13,l31),l22);
    f=f1;
    % p=2*p; q=2*q;
end