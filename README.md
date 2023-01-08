# Image Interpolation - Numerical Methods - Project 2

A pdf with the detailed description can be found in the repo.

## Proximal Interpolation

### proximal_2x2

Points between 1 and 2 are defined with a 0.1 difference between them.

To find the nearest point, the coordinates are rounded. The pixel will receive the value from the rounded coordinates.

### proximal_resize

The function is converted to double for precision.

The scaling factors are calculated as the ratio between the size after scaling and the initial size. The transformation matrix is calculated. The inverse shape is calculated by hand and introduced into a variable. The previous coordinates are calculated.

The nearest pixel is calculated by rounding. The pixel value will be the value of the nearest pixel.

### proximal_rotate

The coefficients for rotation are found by solving the equation Aa = b, a = A / b.

The rotation matrix is composed of the sines and cosines of the angle. The matlab inv function is used to calculate its inverse. The previous coordinates are calculated.

The value black is assigned for pixels that are out of size. The nearest pixel for the remaining ones is calculated by rounding up or down. Interpolation is calculated using the interpolation function with the calculated coefficients.

### proximal_RGB

For each of the RGB functions, the image is decomposed into the three channels, the corresponding function is applied to each of them, and then the channels are concatenated.

## Bicubic Interpolation

### Approximate derivatives

Derivatives were approximated as half the difference between the next point and the previous one, that is, instead of the limit, differences between known values were used.

### bicubic_resize

The scaling factors are calculated as the ratio between the size after scaling and the initial size. The 4 points surrounding the pixel are calculated by rounding the coordinates up and down. The bicubic coefficients are calculated and the function is applied to the pixel value.

The coefficients are obtained by multiplying matrices.

## Lanczos Interpolation

### Nonsymmetric

QR decomposition is calculated using the matlab qr function. Vector values are given according to the formulas.

In the for loop, the values for the elements of the vectors are calculated. Beta and delta are found by solving the equation in the formulas.

Singular value decomposition is calculated using the matlab svd function and the resulting terms are used to compose the values of the vectors.

### Rational block

Values for S and R are given as in the formulas. H(1,0) is chosen as 1, so V = S. W is chosen as Ip / V1 transposed. From this, it follows that G(1, 0) = R / W to respect the formula.

In the for loop, it is checked if sigma is infinite. All described formulas are applied. Singular value decomposition is done with the matlab svd function. S and R are not stored as vectors because we are only interested in their value at the current moment.

### Adaptive rational block

The factors V and W are obtained from the Rational Block algorithm. The new A, B and C and transfer matrix are calculated. The process is repeated until the error between the transfer matrices is small enough.
