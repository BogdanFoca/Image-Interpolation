function out = proximal_2x2_RGB(img, STEP = 0.1)
    % ==============================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 definita img cu puncte intermediare echidistante.
    % img este o imagine colorata RGB -Red, Green, Blue.
    % =============================================================================================

    % TODO: Extrage canalul rosu al imaginii.
    redChannel = img(:,:,1);
    % TODO: Extrage canalul verde al imaginii.
    greenChannel = img(:,:,2);
    % TODO: Extrage canalul albastru al imaginii.
    blueChannel = img(:,:,3);
    % TODO: Aplic? functia proximal pe cele 3 canale ale imaginii.
    redChannel = proximal_2x2(redChannel);
    greenChannel = proximal_2x2(greenChannel);
    blueChannel = proximal_2x2(blueChannel);
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out = cat(3, redChannel, greenChannel, blueChannel);
end
