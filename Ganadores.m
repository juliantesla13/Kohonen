function G=Ganadores(W,X)
szW=size(W);
szX=size(X);
%indice=zeros(sz(2),1); 

for j=1:szX(2)
  for i=1:szW(2)
    indice(i)=sqrt((X(1,j)-W(1,i))^2+(X(2,j)-W(2,i))^2)
  end
  min()
    
end
G=1;
end 

