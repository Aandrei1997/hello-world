%semnal dreptunghiular multinivel aleator, durate de 0.25 s
t=0:0.2:20;    %0.2=200ms=rezolutia temporara
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
