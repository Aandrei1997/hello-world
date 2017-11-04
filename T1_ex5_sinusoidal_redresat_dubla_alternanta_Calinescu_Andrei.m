%Semnal sinusoidal redresat dubla-alternanta
%T=4s, A=1.5
figure(1)
hold on
t=0:0.002:8;    %0.002=2ms=rezolutia temporara

x=1.5*abs(sin(2*pi*t*1/4));   %redresare
plot(t, x, '-b.');
title('Sinus redresat dubla-alternanta')
xlabel('Timp [s]')
ylabel('A [V]')

figure(2)
hold on
t=0:0.02:2;     %0.02=20ms=rezolutia temporara
x=1.5*abs(sin(2*pi*t*1/4));   %redresare
plot(t, x, '-b.');
title('Sinus redresat dubla-alternanta')
xlabel('Timp [s]')
ylabel('A [V]')

figure(3)
hold on
t=0:0.2:2;    %0.2=200ms=rezolutia temporara
x=1.5*abs(sin(2*pi*t*1/4));   %redresare
plot(t, x, '-b.');
title('Sinus redresat dubla-alternanta')
xlabel('Timp [s]')
ylabel('A [V]')

%title, xlabel, ylabel precizeaza titlul graficului si a etichetelor axelor
%Intrucat sin(t) are implicit perioada 1 si A =1, argumentul trebuie
%inmultit cu 1/4 pentru a corespunde T=4s, iar functia insasi cu 1.5 pentru
%a satisface A=1.5
%Graficul fiecarui subpunct a fost creat intr-un grafic separat utilizand 
%comanda figure(n).Hold on retine graficele deja existente in sistemul de 
%axe asupra caruia se opereaza.
%Cu ajutorul functiei plot se traseaza graficul.