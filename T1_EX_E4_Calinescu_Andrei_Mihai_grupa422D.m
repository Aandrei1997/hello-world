%a)
z=[0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
n=0:20
m=-5:15
%prima figura este reprezentata in grafice diferite
figure(1)
plot(n,z)
hold on
stem(n,z)
hold off
figure(2)
plot(m,z)
hold on
stem(m,z)
hold off
%a doua fiugra este reprezentata prin 2 grafice unul sub altul
figure(3)
subplot(2,1,1)
hold on
plot(n,z)
subplot(2,1,2)
plot(m,z)
hold on
subplot(2,1,1)
stem(n,z)
subplot(2,1,2)
stem(m,z)
hold off


%b)
n=0:20
t=abs(10-n);
figure(4)
plot(n,t)
hold on
stem(n,t)
hold off
figure(5)
subplot(2,1,1)
plot(n,t)
subplot(2,1,2)
stem(n,t)

%c)
n=-15:25
x1=sin(pi*n/17)
figure(6)
plot(n,x1)
hold on
stem(n,x1)
hold off
figure(7)
subplot(2,1,1)
plot(n,x1)
subplot(2,1,2)
stem(n,x1)

n=0:50
x2=cos(pi*n/sqrt(23))
figure(8)
plot(n,x2)
hold on
stem(n,x2)
hold off
figure(9)
subplot(2,1,1)
plot(n,x2)
subplot(2,1,2)
stem(n,x2)

%Graficul fiecarui subpunct a fost creat intr-un grafic separat utilizand 
%comanda figure(n).Hold on retine graficele deja existente in sistemul de 
%axe asupra caruia se opereaza.Hold off opreste suprapunerea graficelor.
%Functia plot se foloseste pentru trasarea graficului, functia subplot
%imparte fereastra in mai multe grafice si specifica unde trasam graficul,
%iar functia stem face graficul de tip discret
