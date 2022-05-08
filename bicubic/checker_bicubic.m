function [score] = checker_bicubic()
    bicubic_points = 20;

    [bicubic_diff, bicubic_diff_max] = test("checker_props/checker_bicubic_diff");
    printf("Bicubic derivate: %d / %d teste trecute.\n", bicubic_diff, bicubic_diff_max);
    
    [bicubic_coef, bicubic_coef_max] = test("checker_props/checker_bicubic_coef");
    printf("Bicubic coefficients: %d / %d teste trecute.\n", bicubic_coef, bicubic_coef_max);
    
    [bicubic_resize, bicubic_resize_max] = test("checker_props/checker_bicubic_resize");
    printf("Resize image: %d / %d teste trecute.\n", bicubic_resize, bicubic_resize_max);
    
    [bicubic_resize_RGB, bicubic_resize_RGB_max] = test("checker_props/checker_bicubic_resize_RGB");
    printf("Resize RGB image: %d / %d teste trecute.\n", bicubic_resize_RGB, bicubic_resize_RGB_max);

    score = bicubic_points * (bicubic_diff / bicubic_diff_max / 5 + bicubic_coef / bicubic_coef_max / 5 +
                              bicubic_resize / bicubic_resize_max / 5 + bicubic_resize_RGB / bicubic_resize_RGB_max / 5);
    printf("Punctaj total: %.2f\n", score);
    
    fout = fopen("results", "w");
    fprintf(fout, "%.2f", score);
    fclose(fout);
endfunction
