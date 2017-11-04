%semnal dreptunghiular periodic
%n=25%, T=2s, A+=0.5, A-=-1
figure(1)
hold on
t=0:0.002:2;   %0.002=2ms=rezolutia temporara
x=0.75*square(t*2*pi, 25)-0.25;
plot(t,x,'-b.')
title('Semnal Dreptunghiular')
xlabel('Timp [s]')
ylabel('A [V]')

figure(2)
hold on
t=0:0.02:2;   %0.02=20ms=rezolutie temporara
x=0.75*square(t*2*pi, 25)-0.25;
plot(t,x,'-b.')
title('Semnal Dreptunghiular')
xlabel('Timp [s]')
ylabel('A [V]')

figure(3)
hold on
t=0:0.2:2;       %0.2=200ms=reolutie temporara
x=0.75*square(t*2*pi, 25)-0.25;
plot(t,x,'-b.')
title('Semnal Dreptunghiular')
xlabel('Timp [s]')
ylabel('A [V]')

%title, xlabel, ylabel precizeaza titlul graficului si a etichetelor axelor
%Cu ajutorul functiei plot se traseaza graficul.
%Cu functia figure(n) se creeaza graficul fiecarei rezolutii temporare
%intr-un grafic separat.Hold on retine graficele deja existente in sistemul
%de axe asupra caruia se opereaza.
%Deoarece square(t, duty) genereaza un semnal dreptunghiular simetric,
%acesta trebuie inmultit si adunat cu constante pentru a indeplini
%cerintele.De asemenea, argumetul t al functiei a fost inmultit cu 2pi din
%acelasi motiv.
%a*1+b=0.5 
%a*(-1)+b=-1   din acestea doua rezulta ca a=0.75 si b=-0.25