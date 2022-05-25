function [A, B, C] = AORBL(A, B, C, s1, s2, tol)
  [h, l] = size(A);
  H0 = eye(l);
  eps = 1;
  m = 1;
  new_H = H0;
  
  while eps > tol
    [V, W] = Rational_Block_Lanczos(A, B, C);
    A = W' * A * V;
    B = W' * B;
    C = C * V;
    
    old_H = new_H;
    
    for i=0:l
      for j=0:l
        %aici trebuie calculat new_H, dar nu imi iese
        %new_H = old_H - C * inv((old_H(i, j) * eye(l) - A))*(V*W' * eye(l))*A*V()
      endfor
    endfor
    
    eps = norm(new_H - old_H, Inf);
    m = m + 1;
  endwhile
endfunction
