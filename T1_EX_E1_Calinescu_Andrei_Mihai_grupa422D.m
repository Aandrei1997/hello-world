a=0:0.1:2
%Deoarece a are 1 linie si 21 de coloane b trebuie sa aibe 21 de linii si 
%o coloana ca sa se poata inmulti cu a 
b=ones(21,1)
a*b
b*a
%pentru inmultirea element cu element se foloseste operatorul .*
a.*b
%la inmultirea element cu element vom avea eroare deoarece cei doi vectori, 
%din punct de vedere matriceal, nu au dimensiunile egale, a are o linie si 
%21 de coloane, iar b are 21 de linii si o coloana, deci operatorul .* nu 
%poate fi folosit