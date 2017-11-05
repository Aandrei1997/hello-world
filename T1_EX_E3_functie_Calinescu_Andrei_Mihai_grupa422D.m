function [media, vector, matrice] = functie(z)

media=mean(real(z))
vector=z.^2   %se ridica la patrat toate elementele vectorului
matrice=z*(z.')   %se inmulteste matricea z cu transpusa ei


end

