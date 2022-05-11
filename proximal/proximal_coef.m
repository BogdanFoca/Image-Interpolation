function a = proximal_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru Interpolarea Proximala intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2).
    % =========================================================================
    f = double(f);
    % TODO: Calculeaza matricea A.
    A = [1, x1, y1, x1 * y1; 1, x1, y2, x1 * y2; 1, x2, y1, x2 * y1; 1, x2, y2, x2 * y2];
    % TODO: Calculeaza vectorul b.    
    b = [f(A(1, 1)); f(A(1, 2)); f(A(2, 1)); f(A(2, 2))];
    % TODO: Calculeaza coeficientii.
    a = A\b;
end
