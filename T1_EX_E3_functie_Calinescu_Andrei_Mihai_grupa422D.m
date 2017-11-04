function [media, vector, matrice] = functie(z)

media=mean(real(z))
vector=z.^2
matrice=z*(z.')


end

