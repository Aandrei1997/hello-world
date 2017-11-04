%Semnal dreptunghiular multinivel aleator, durate de 0.25s

t=0:0.002:15;   %0.002=2ms=rezolutia temporara
%a)
niv=[ -1 1 ];
figure(1)
hold on
title('Semnal Dreptunghiular multinivel aleator')
xlabel('Timp [s]')
ylabel('A [V]')
for n=0:0.25:40
    x=datasample(niv, 1)
    plot(t, x*rectpuls(t-n, 0.25))
end

%b)
niv=[ -3 -1 1 3 ];
figure(2)
hold on
title('Semnal Dreptunghiular multinivel aleator')
xlabel('Timp [s]')
ylabel('A [V]')
for n=0:0.25:40
    x=datasample(niv, 1)
    plot(t, x*rectpuls(t-n, 0.25))
end

%c)
niv=[ -5 -3 -1 1 3 5 ];
figure(3)
hold on
title('Semnal dreptunghiular multinivel aleator')
xlabel('Timp [s]')
ylabel('A [V]')
for n=0:0.25:40
    x=datasample(niv, 1)
    plot(t, x*rectpuls(t-n, 0.25))
end

%d)
niv=[ -7 -5 -3 -1 1 3 5 7 ];
figure(4)
hold on
title('Semnal Dreptunghiular')
xlabel('Timp [s]')
ylabel('A [V]')
for n=0:0.25:40
    x=datasample(niv, 1)
    plot(t, x*rectpuls(t-n, 0.25))
end


%title, xlabel, ylabel precizeaza titlul graficului si a etichetelor axelor
%Graficul fiecarui subpunct a fost creat intr-un grafic separat utilizand 
%comanda figure(n). y=datasample(data, k) retunreaza k observatii extrase
%aleator din matricea/vectorul data. y=rectpuls(t, w) genereaza un impuls
%unitate(A=1) dreptunghiular de durata w centrata in t. Hold on retine
%graficele deja existente in sistemul de axe asupra caruia se opereaza.
%Cu autorul functiei plot se traseaza graficele.