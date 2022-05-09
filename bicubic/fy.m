function r = fy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: Calculeaza derivata.
    r = 0.5 * (f(x, y + 1) - f(x, y - 1));
end