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
    
    eps = norm(new_H - old_H, Inf);
    m = m + 1;
  endwhile
endfunction
