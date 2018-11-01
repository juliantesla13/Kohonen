function W = entrenarC(W,X,alpha,dietime)
    szX = size(X);
    szW = size(W);
    for i = 1:dietime
       p = round(1+rand()*(szX(2)-1));
       r = zeros(1,szW(2));
       for j = 1:szW(2)
          r(j) = sqrt(sum(W(:,j).^2-X(:,p).^2)); 
       end
       rid = find(r == min(r));
       W(:,rid) = W(:,rid)+alpha*(X(:,p)-W(:,rid));
    end
end