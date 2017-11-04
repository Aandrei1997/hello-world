v=randn(1,8)     %generarea vectorului cu elemente aleatoare cu distributia 
                 %normala
for i=1:8        %parcurgem vectorul    
    if v(i)<0    %daca elementul e negativ
        v(i)     %il afisez
    end
end