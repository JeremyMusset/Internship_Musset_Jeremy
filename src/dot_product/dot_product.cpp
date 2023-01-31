#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include "../../include/gen_random_number.h"
#include "../../include/error_free.h"

int main() {
    double sum;
    double cond;
    int n;
    n = 10;
    sum = 150;
    cond = 5;
  
    class std::vector<double> a(n);
    class std::vector<double> b(n);
    class std::vector<double> c(n);
    class std::vector<double> tp1(n);
    class std::vector<double> tp2(n);


    for (unsigned int i=0;i<n;i++) {
        a[i] = 0.2;
        b[i] = 0.3;
        c[i] = 0.6*n;
    }
    printf("%lf",ceil(1.3));
    TwoProd(a,b,n,tp1,tp2);


    return 0;
}
