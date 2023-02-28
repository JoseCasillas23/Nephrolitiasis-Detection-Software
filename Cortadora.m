function [n_cortep] = Cortadora(X)
[n_rows, n_cols, n_slices] = size(X);
cont = 0; 
maxu = 0; 
corte = 0; 
min_tejido = 300;
max_tejido = 700;
acom = 0;
cont2 = 0;
X = X > min_tejido & X < max_tejido;
for i =  200: 300
for j = 1 : n_cols
for k = 1 : n_slices
    if (X(i,j,k)==1) 
    cont=cont+1;  
    end
end

end    
        if(cont > maxu)
            maxu = cont;
            acom = acom + i; 
            cont2 = cont2 + 1;
            corte = i;
        end
        cont=0;
end

prom = round(acom/cont2);

if(prom < 250)
    corte = prom - floor(6*pi);
end
if(prom > 250)
    corte = corte-6;
end
n_cortep = corte; 

    
