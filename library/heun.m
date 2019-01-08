function [t,y] = heun(F,tspan,y0,n)

a=tspan(1);
b=tspan(2);
y = y0;
h=(b-a)/n;
t=a:h:b;
t = t'; %�C���� [1,11] -> [11,1]
y=y0*ones(n+1,1);

for i=1:n
     y(i+1)= y(i) + h/2*(F(t(i), y(i))+F(t(i)+h, y(i)+F(t(i), y(i))*h));
end
