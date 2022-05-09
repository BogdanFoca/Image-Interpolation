function r = fx(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x a lui f in punctul (x, y).
    % =========================================================================

    % TODO: Calculeaza derivata.
    r = 0.5 * (f(x + 1, y) - f(x - 1, y));
end