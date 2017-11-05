%a)
F=50
t=0:0.001:0.2
s=2*sin(2*pi*F*t)
figure(1)
subplot(3,1,1)
plot(t,s,'.-')
xlabel('Timp [s]')
grid on
%semnal cu pasul de 10ms
F=50
t=0:0.01:0.2
s=2*sin(2*pi*F*t)
subplot(3,1,2)
plot(t,s,'.-')
xlabel('Timp [s]')
grid on
%semnal cu pasul de 0.0002
F=50
t=0:0.0002:0.2
s=2*sin(2*pi*F*t)
subplot(3,1,3)
plot(t,s,'.-')
xlabel('Timp [s]')
grid on
%Cu cat pasul este mai mic cu atat imaginea seamana cu ccea dorita
%Cu cat e mai mare pasul cu atat imaginea apare mai distorsionata

%b)
%Perioada semnalului nu depinde de pas.Ea este dependenta de 2*pi*F care
%este egal cu 0.02V

%c)
F=50
t=0:0.001:0.2
s=2*sin(2*pi*F*t)
f=20
c=2*cos(2*pi*f*t)
figure(2)
hold on
plot(t,s)
plot(t,c)
xlabel('Timp [s]')
grid on

%Graficele subpunctelor a si c au fost create intr-un grafic separat 
%utilizand comanda figure(n).Hold on retine graficele deja existente 
%in sistemul de axe asupra caruia se opereaza.%Functia plot se foloseste 
%pentru trasarea graficului, functia subplot imparte fereastra in mai multe
%grafice si specifica unde trasam graficul