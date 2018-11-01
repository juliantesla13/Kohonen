function W=crearC(Rango,numero_aleatorio)
 %Rango=[0 1; 0,1];
 %numero_aleatorio=2; 
 sz=size(Rango); 
 W = zeros(Rango(1),numero_aleatorio)

for i=1:(size(1)+1)
  W(i,:)=random('uniform',0,1,[1,numero_aleatorio]);
end
end 