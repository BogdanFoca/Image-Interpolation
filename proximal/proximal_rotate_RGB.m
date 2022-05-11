function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    redChannel = img(:,:,1);
    % TODO: Extrage canalul verde al imaginii.
    greenChannel = img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    blueChannel = img(:,:,3);
    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    redChannel = proximal_rotate(redChannel);
    greenChannel = proximal_rotate(greenChannel);
    blueChannel = proximal_rotate(blueChannel);
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out = cat(3, redChannel, greenChannel, blueChannel);
endfunction
