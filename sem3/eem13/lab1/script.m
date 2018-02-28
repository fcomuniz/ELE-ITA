clear all
f = 2e9;
w  = 2*pi*f;
L = 0.796e-9;
R = 15;

Zl = R + j*L*w;
X = L*w;
Zo = 50;


auxt = sqrt(R*((Zo-R)^2 + X^2)/Zo);
t1 = (X + auxt)/(R-Zo);
t2 = (X - auxt)/(R-Zo);
d2 = atan(t2)/2/pi;
d1 = (atan(t1)+pi)/2/pi;

d2g = d2*180;
d1g = d1*180;
z = @(t) Zo*(Zl +j*Zo*tan(t))/(Zo+j*Zl*tan(t));
Z1 = z(t1);
Z2 = z(t2);
Y1 = 1/Z1;
Y2 = 1/Z2;
B1 = imag(Y1);
B2 = imag(Y2);

% circuito aberto
la1 = -atand(B1*Zo);
la2 = -atand(B2*Zo);

% circuito curto 

lc1 = atan(1/B1/Zo);
lc2 = atan(1/B2/Zo);

y = @(yl,yo,t) yo(yl + j*yo*tan(t))/(yo + j*yl*tan(t));



