//line
xa=0;
ya=0;
za=0;

xb=1;
yb=0;
zb=0;

//plane
x0=28;
y0=22;
z0=29;

x1=12;
y1=6;
z1=0;

x2=28;
y2=0;
z2=37;

a=xa-xb;
b=x1-x0;
c=x2-x0;
d=ya-yb;
e=y1-y0;
f=y2-y0;
g=za-zb;
h=z1-z0;
i=z2-z0;

A=((e*i)-(f*h));
B=-((d*i)-(f*g));
C=((d*h)-(e*g));
D=-((b*i)-(c*h));
E=((a*i)-(c*g));
F=-((a*h)-(b*g));
G=((b*f)-(c*e));
H=-((a*f)-(c*d));
I=((a*e)-(b*d));

det=(a*A)+(b*B)+(c*C);

p=[[a,b,c],
   [d,e,f],
   [g,h,i]];

L=[[xa-x0],[ya-y0],[za-z0]];

P=[[A,D,G],
   [B,E,H],
   [C,F,I]];

echo(((1/det)*P)*L);

