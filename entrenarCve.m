function W = entrenarCve(W,X,alpha_i,alpha_f,sig_i,sig_f,dietime)
    szX = size(X);
    szW = size(W);
    alpha = alpha_i;
    sig = sig_i;
    for i = 1:dietime
       %Busca la neurona ganadora.
       p = round(1+rand()*(szX(2)-1));
       r = zeros(1,szW(2));
       for j = 1:szW(2)
          r(j) = sqrt(sum((W(:,j)-X(:,p)).^2)); 
       end
       rid = find(r == min(r));
       %Actualiza los pesos.
       for j = 1:szW(2)
           W(:,j) = W(:,j)+alpha*exp(-((j-rid)^2)/(2*sig^2))*(X(:,p)-W(:,j));
       end
       %Varía la rata de aprendizaje.
       alpha = alpha_i*(alpha_f/alpha_i)^(i/dietime);
       sig = sig_i*(sig_f/sig_i)^(i/dietime);
    end
end