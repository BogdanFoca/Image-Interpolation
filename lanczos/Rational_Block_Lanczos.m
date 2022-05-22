function [V, W] = Rational_Block_Lanczos(A, B, C, Sigma)
  [mHeight, mLength] = size(A);
  S0 = inv((A - Sigma(1)*eye(mHeight))) * B;
  R0 = inv((A - Sigma(1)*eye(mHeight))')*C';
  
  V_v(1) = V1;
  W_v(1) = W1;
  
  m = length(Sigma);
  for k=1:m
    if k < m
      if Sigma(k+1) == Inf
        S(k) = A*Vs(k);
        R(k) = A'*W(k);
      elseif
        S(k) = inv(A - Sigma(k+1)*eye(mHeight)) * Vs(k);
        R(k) = inv(A - Sigma(k+1)*eye(mHeight)) * Vs(k);
      endif
      H(k) = W_v' * S(k);
    endif
  endfor
endfunction
