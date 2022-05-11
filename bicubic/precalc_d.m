function [Ix, Iy, Ixy] = precalc_d(I)
    % =========================================================================
    % Prealculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy, dxy ale
    % imaginii I pentru fiecare pixel al acesteia.
    % =========================================================================

    % Obtinem dimensiunea imaginii.
    [m n nr_colors] = size(I);

    % TODO: Tranforma matricea I in double.
    I = double(I);
    % TODO: Calculeaza matricea cu derivate fata de x Ix.
    Ix = matrix(m, n);
    Ix(:, 2:n-1) = 0.5 * (I(:, 3:n, 1) - I(:, 1:n-2, 1));
    % TODO: Calculeaza matricea cu derivate fata de y Iy.
    Iy = matrix(m, n);
    Iy(2:m-1, :) = 0.5 * (I(3:m, :, 1) - I(1:m-2, :, 1));
    % TODO: Calculeaza matricea cu derivate fata de xy Ixy.
    Ixy = matrix(m, n);
    Ixy(2:m-1, 2:n-1) = 0.25 * (I(1:m-2, 1:n-2, 1) + I(3:m, 3:n, 1) - I(1:m-2, 3:n, 1) - I(3:m, 1:n-2, 1));
endfunction
