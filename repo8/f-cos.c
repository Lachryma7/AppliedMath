#include <stdio.h>
#include <math.h>
main () {
    double x,dx;
    dx = 1.0/1000;
    x = 0.0;
    for ( x = 0.0; x <= 0.5+dx; x += dx) {
        printf("%6.3f %6.3f\n", x, sin(100*x)+sin(110*x));
    }
    return 0;
}