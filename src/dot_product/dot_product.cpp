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
    n = 8;
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
    // Use MPFR_dot product 
    printf("\n \nCORRECT ROUNDING : ");
    c = 0.0
    c = common_dot_prod(a,b,n,1,1);
    printf("%.15f",c);
    
    // Test the common dot product
    printf("\n \nCOMMON PROD : ");
    c = 0.0
    c = common_dot_prod(a,b,n,1,1);
    printf("%.15f",c);
    printf("\n \n");

    TwoProd(a,b,n,tp1,tp2);
    printf("\n TWO PROD : \n");
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
