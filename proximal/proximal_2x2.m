function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) ?i (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distan?a dintre dou? puncte succesive.
    % ===================================================================================
    
    % TODO: Defineste coordonatele x si y ale punctelor intermediare.
    xs = 1.1:STEP:1.9;
    ys = 1.1:STEP:1.9;
    % Se afl? num?rul de puncte.
    n = length(x_int);
    % TODO: Cele 4 puncte încadratoare vor fi aceleasi pentru toate punctele din interior.
    x1 = 1;
    x2 = 2;
    y1 = 1;
    y2 = 2;
    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    out = matrix(n, n);
  
    % Se parcurge fiecare pixel din imaginea finala.
    for i = 1 : n
        for j = 1 : n
            % TODO: Afla cel mai apropiat pixel din imaginea initiala.
            xap = 0;
            yap = 0;
            xap = round(x);
            yap = round(y);
            % TODO: Calculeaza pixelul din imaginea finala.
            out(i, j) = f(xap, yap);
        end
    end

end