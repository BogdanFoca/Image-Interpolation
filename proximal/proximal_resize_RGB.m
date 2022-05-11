function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel �nc�t aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    redChannel = img(:,:,1);
    % TODO: Extrage canalul verde al imaginii.
    greenChannel = img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    blueChannel = img(:,:,3);
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    redChannel = proximal_resize(redChannel);
    greenChannel = proximal_resize(greenChannel);
    blueChannel = proximal_resize(blueChannel);
    % TODO: Formeaza imaginea finala concaten�nd cele 3 canale de culori.
    out = cat(3, redChannel, greenChannel, blueChannel);
endfunction
