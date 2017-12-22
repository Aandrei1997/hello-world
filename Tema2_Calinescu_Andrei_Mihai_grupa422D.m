syms t;
P=40;    %Perioada semnalului triunghiular
N=50;    %Numarul de coeficienti
D=4;     %Durata semnalului triunghiular
t1=0:0.2:80;    %0.2=200ms=rezolutia temporala
w0=(2*pi)/P;    %Pulsatia semnalului triunghiular
x1=t/36;        %Dreapta crescatoare 
x2=1-(t-36)/4;  %Dreapta descrescatoare
xi=0.5*sawtooth(t1*2*pi*1/P,0.9);   %Semnalul triunghiular initial
X0=1/P*int(x1,t,0,P-D)+1/P*int(x2,t,P-D,P);  %Componenta continua
disp('X0=');
disp(X0);
a=zeros(1,N);     %initializare a
freq=zeros(1,N);  %initializare freq
y=0;              %initializarea semnalului reconstruit
for k=1:N         %parcurg numarul de coeficienti
    f1=x1*exp(-1j*w0*k*t);
    f2=x2*exp(-1j*w0*k*t);
    Xk=1/P*int(f1,t,0,P-D)+1/P*int(f2,t,P-D,P);  %Calculul coeficientilor
    a(k)=sqrt((imag(Xk))^2+(real(Xk))^2);    %Calculul amplitudinii
    freq(k)=k/P;
    S=['X',num2str(k),'='];
    disp(S);
    disp(Xk);
    y=y+2*(Xk*exp(1j*k*w0*t1));  %Reconstruirea semnalului initial
end
y1=y+X0;    %Adun componenta continua pentru ca reconstruirea semnalului 
            %initial sa fie completa
figure(1)
stem(0,X0,'-b')  %Reprezentarea amplitudinii componentei continue
hold on
stem(freq,a,'-b')  %Reprezentarea spectrului de amplitudini la frecvente 
                   %pozitive
hold on
stem(-freq,a,'-b') %Reprezentarea spectrului de amplitudini la frecvente 
                   %negative
title('Reprezentarea spectrului de amplitudini')
xlim([-N/P N/P])
figure(2)
plot(t1,xi+0.5,'-b') %Reprezentarea semnalului initial
hold on
plot(t1,y1,'--r')    %Reprezentarea semnalului reconstruit
title('Reprezentarea semnalului initial si a celui reconstruit')
legend('semnalul initial','semnalul reconstruit')
axis([0 80 -2 2])

%Spectrul de amplitudini obtinut este un spectru discret, simetric, acesta
%apare atat la frecvente negative cat si la frecvente pozitive. Cu cat
%numarul de coeficienti este mai mare, cu atat semnalul este mai bine
%aproximat(ele se suprapun). Componentele spectrale la frecvente mari sunt
%neglijabile.