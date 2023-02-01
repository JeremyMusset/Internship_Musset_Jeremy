#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include "../../include/gen_random_number.h"

int main() {
    double sum;
    double cond;
    int n;
    n = 10;
    sum = 150;
    cond = 5;
  
    class std::vector<double> a(n);
    class std::vector<double> b(n);
    gen_vec(a,b,n,cond,sum);

    class std::vector<double> c_comp(n);
    printf("c computed = \n");
    for (int i = 0 ; i<n;i++) {
        c_comp[i] = a[i] * b[i];
        printf("%.55f \n",c_comp[i]);
    }

    printf("Somme attendu : %.55f \n",sum);


    return 0;
}