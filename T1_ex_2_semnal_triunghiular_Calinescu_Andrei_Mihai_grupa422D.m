%semnal triunghiular simetric
%T=5s, A+=1, A-=-2, m=1V/s
t=0:0.002:15;     %0.002=2ms=rezolutia temporara
f=0.2
w=2*pi*f
x=1.5*sawtooth(w*t, 0.6)-0.5
subplot(3,1,1)
plot(t,x,'-b.')
title('Semnal Triunghiular')
xlabel('Timp [s]')
ylabel('A [V]')

t=0:0.02:20;     %0.02=20ms=rezolutia temporara
f=0.2
w=2*pi*f
x=1.5*sawtooth(w*t, 0.6)-0.5
subplot(3,1,1)
plot(t,x,'-b.')
title('Semnal Triunghiular')
xlabel('Timp [s]')
ylabel('A [V]')

t=0:0.2:20;      %0.2=200ms=rezolutie temporara
f=0.2
w=2*pi*f
x=1.5*sawtooth(w*t, 0.6)-0.5;
plot(t,x,'-b.')
title('Semnal Triunghiular')
xlabel('Timp [s]')
ylabel('A [V]')

grid on

%title, xlabel, ylabel precizeaza titlul graficului si a etichetelor axelor
%Cu ajutorul functiei plot se traseaza graficul.
%Functia subplot afiseaza mai multe grafice intr-o singura figura.
%Functia sawtooth genereaza semnalul triunghiular