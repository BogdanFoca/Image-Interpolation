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
    
    Beta = Vu(j+1)/Vs(j+1);
    DeltaT = Wu(j+1)/Ws(j+1);
    DeltaT = DeltaT';
    
    [U, S, Z] = svd(W(j+1)' * V(j+1));
    DeltaT = DeltaT * U * sqrt(S);
    Beta = sqrt(S) * Z * Beta;
    Vs(j+1) = Vs(j+1) * Z' * (1/sqrt(S));
    Ws(j+1) = Ws(j+1) * U * (1/sqrt(S));
    Vu(j+2) = A * Vs(j+1) - Vs(j)*Beta;
    Wu(j+2) = A' * Ws(j+1) - Ws(j)*Beta'; 
  endfor
endfunction
