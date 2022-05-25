function [V, W] = Rational_Block_Lanczos(A, B, C, Sigma)
  [mHeight, mLength] = size(A);
  S = inv((A - Sigma(1)*eye(mHeight))) * B;
  R = inv((A - Sigma(1)*eye(mHeight))') * C';
  
  H(1, 0) = 1;
  V = S;
  W = (eye(l) / V)';
  G(1, 0) = R / W;
  V_v(1) = V;
  W_v(1) = W;
  
  m = length(Sigma);
  for k=1:m
    if k < m
      if Sigma(k+1) == Inf
        S = A*Vs(k);
        R = A'*W(k);
      elseif
        S = inv(A - Sigma(k+1)*eye(mHeight)) * Vs(k);
        R = inv(A - Sigma(k+1)*eye(mHeight)) * Vs(k);
      endif
      H(k) = W_v' * S;
      G(k) = V' * R;
      S = S - V_v * H(k+1, k);
      R = R - W * G(k+1, k);
      [P, D, Q] = svd(W'*V);
      V = V * Q' * sqrt(D);
      W = W * P * sqrt(D);
      H(k+1, k) = sqrt(D)*Q*H(k+1, k);
      G(k+1, k) = sqrt(D)*P'*G(k+1, k);
      V_v(k+1) = [V_v(k), V];
      W_v(k+1) = [W_v(k), W];
    elseif
      if Sigma(m+1) == Inf
        S = A * B;
        R = A' * C;
      elseif
        S = inv(A) * B;
        R = inv(A)' * C';
      endif
      H(m) = W_v(m)' * S;
      G(m) = V_v(m)' * R;
      S = S * V_v(m)*H(m);
      R = R - W_v(m)*G(m);
      S = V*H(m+1, m);
      R = W*G(m+1, m);
      [P, D, Q] = svd(W'*V);
      V = V * Q' * sqrt(D);
      W = W * P * sqrt(D);
    endif
  endfor
endfunction
