#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include "../../include/error_free.h"

int main() {
    double sum;
    double cond;
    double c;
    int n;
    n = 3;
    sum = 150;
    cond = 5;
  
    class std::vector<double> a(n);
    class std::vector<double> b(n);
    class std::vector<double> tp1(n);
    class std::vector<double> tp2(n);

    for (unsigned int i=0;i<n;i++) {
        a[i] = 0.2;
        b[i] = 0.3;
    }
    c = 0.6 * n;
    TwoProd(a,b,n,tp1,tp2);
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",a[i]);
    }
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",b[i]);
    }
    printf("RES : \n");
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",tp1[i]);
    }
    printf("\n");
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",tp2[i]);
    }
    

    return 0;
}
