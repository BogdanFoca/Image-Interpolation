function [V, W] = Rational_Block_Lanczos(A, B, C, S)
  [mHeight, mLength] = size(A);
  S0 = inv((A - S(1)*eye(mHeight))) * B;
  R0 = inv((A - S(1)*eye(mHeight))')*C';
  
endfunction
