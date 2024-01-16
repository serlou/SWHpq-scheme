function wh=WH(p,a,x,y)

sgn=sign(x).*sign(y);
sgn0=sgn>0;
sgn(sgn0)=sign(x(sgn0));
sgn(~sgn0)=0;

M=max(abs(x),abs(y));
m=min(abs(x),abs(y));
alpha=max(a,1-a)/min(a,1-a);

wh=sgn.*abs(a*x+(1-a)*y).*(1-(abs(x-y).^p)./((M+m/alpha).*(M+m*alpha).^(p-1)));
wh(~sgn0)=0;