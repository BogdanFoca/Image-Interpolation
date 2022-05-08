function R = proximal_resize(I, p, q)
    % =========================================================================
    % Se scaleaza imaginea folosind algoritmul de Interpolare Proximala.
    % Transforma imaginea I din dimensiune m x n în dimensiune p x q.
    % =========================================================================
    [m n nr_colors] = size(I);

    % Se converteste imaginea de intrare la alb-negru, daca este cazul.
    if nr_colors > 1
        R = -1;
        return
    end

    % TODO: Initializeaza matricea finala drept o matrice nula.
    R = matrix(p, q);
    % Obs:
    % Atunci când se aplica o scalare, punctul (0, 0) al imaginii nu se va deplasa.
    % În Octave, pixelii imaginilor sunt indexati de la 1 la n.
    % Daca se lucreaza cu indici de la 1 la n si se înmultesc x si y cu s_x respectiv s_y,
    % atunci originea imaginii se va deplasa de la (1, 1) la (sx, sy)!
    % De aceea, trebuie lucrat cu indici în intervalul [0, n - 1].

    % TODO: Calculeaza factorii de scalare.
    % Obs: Daca se lucreaza cu indici din intervalul [0, n - 1], ultimul pixel
    % al imaginii se va deplasa de la (m - 1, n - 1) la (p, q).
    % s_x nu va fi q ./ n
    sx = q / n;
    sy = p / m;
    % TODO: Defineste matricea de transformare pentru redimensionare.
    T = [sx, 0; 0, sy];
    % TODO: Inverseaza matricea de transformare, FARA a folosi functii predefinite!
    T_inv = [1/sx, 0; 0, 1/sy];
    % Se parcurge fiecare pixel din imagine.
    for y = 0 : p - 1
        for x = 0 : q - 1
            % TODO: Aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p
            % din spatiul imaginii initiale.
            new_coords = T_inv * [x; y];
            % TODO: Trece (xp, yp) din sistemul de coordonate [0, n - 1] in
            % sistemul de coordonate [1, n] pentru a aplica interpolarea.
            new_coords = new_coords + [1; 1];
            % TODO: Calculeaza cel mai apropiat pixel.
            closestPixel = round(new_coords);
            % TODO: Calculeaza valoarea pixelului din imaginea finala.
            R(x, y) = I(closestPixel);
        end
    end

    % TODO: Transforma matricea rezultata în uint8 pentru a fi o imagine valida.
    d = linspace(min(R(:)),max(R(:)),256);
    R = uint8(arrayfun(@(x) find(abs(d(:)-x)==min(abs(d(:)-x))),R));
end
