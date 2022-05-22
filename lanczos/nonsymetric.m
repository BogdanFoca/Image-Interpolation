function out = nonsymetric(A, V, W, m)
  [Q, R] = qr(W' * V);
  Vs(1) = V * inv(R);
  Ws(1) = W*Q;
  Vu(2) = A*V1;
  Wu(2) = A'*W1;
  for j=1:m
    alpha(j) = W(j)'*Vu(j+1);
    Vu(j+1)=Vu(j+1)-Vs(j)*alpha(j);
    Wu(j+1)=Wu(j+1)-Ws(j)*alpha(j)';
    
    Beta(j+1) = Vu(j+1)/Vs(j+1);
    DeltaT(j+1)=Wu(j+1)/Ws(j+1);
    
    [U, S, V] = svd(W(j+1)' * V(j+1));
    
  endfor
endfunction
