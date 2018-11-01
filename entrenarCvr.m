function W = entrenarCvr(W,X,alpha_i,alpha_f,dietime)
    szX = size(X);
    szW = size(W);
    alpha = alpha_i;
    for i = 1:dietime
       %Busca la neurona ganadora.
       p = round(1+rand()*(szX(2)-1));
       r = zeros(1,szW(2));
       for j = 1:szW(2)
          r(j) = sqrt(sum((W(:,j)-X(:,p)).^2)); 
       end
       rid = find(r == min(r));
       %Actualiza los pesos.
       W(:,rid) = W(:,rid)+alpha*(X(:,p)-W(:,rid));
       %Varía la rata de aprendizaje.
       alpha = alpha_i*(alpha_f/alpha_i)^(i/dietime);
    end
end