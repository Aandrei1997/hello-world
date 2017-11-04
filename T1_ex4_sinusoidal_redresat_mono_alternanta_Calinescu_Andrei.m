%Semanl Sinusoidal redresat mono-alternanta
%T=3s, A=0.8

figure(1)
hold on
t=0:0.002:4;   %0.002=2ms=rezolutia temporara
x=0.8*sin(2*pi*t*1/3);
x(x<0)=0;      %Monoredresare
plot(t, x, '-b.');
title('Sinus redresat mono-alternanta')
xlabel('Timp [s]')
ylabel('A [V]')

figure(2)
hold on
t=0:0.02:2;    %0.02=20ms=rezolutia temporara
x=0.8*sin(2*pi*t*1/3);
x(x<0)=0;      %Monoredresare
plot(t, x, '-b.');
title('Sinus redresat mono-alternanta')
xlabel('Timp [s]')
ylabel('A [V]')

figure(3)
hold on
t=0:0.2:2;     %0.2=200ms=rezolutia temporara
x=0.8*sin(2*pi*t*1/3);
x(x<0)=0;      %Monoredresare
plot(t, x, '-b.');
title('Sinus redresat mono-alternanta')
xlabel('Timp [s]')
ylabel('A [V]')

%title, xlabel, ylabel precizeaza titlul graficului si a etichetelor axelor
%Intrucat sin(t) are implicit perioada 1 si A=1, argumentul trebuie
%inmultit cu 1/3 pentru a corespunde T=3s, iar functia insasi cu 0.8 pentru
%a indeplini A=0.8
%Graficul fiecarui subpunct a fost creat intr-un grafic separat utilizand 
%comanda figure(n).Hold on retine graficele deja existente in sistemul de 
%axe asupra caruia se opereaza.
%Cu ajutorul functiei plot se traseaza graficul.