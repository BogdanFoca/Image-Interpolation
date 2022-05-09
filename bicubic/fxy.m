function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: Calculeaza derivata.
    r = 0.5 * (fy(f, x + 1, y) - fy(f, x - 1, y));
end