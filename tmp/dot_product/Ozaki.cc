#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <cmath>
#include <algorithm>
#include <iostream>
#include <limits>
#include <omp.h>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include <stdbool.h>
#include "../../include/error_free.h"
#include "../../include/dot_product.h"


#define PREC 53    // 53 in double 
#define P 5000

template double Ozaki<double>(std::vector<double> a, std::vector<double> b, int n, int nb_threads);

template void Split_Ozaki<double>(std::vector<double> x, int n, int &sx, std::vector<std::vector<double>> &xsplit);


/// @brief Ozaki dot product 
/// @tparam T Float or Double
/// @param a Vector
/// @param b Vector 
/// @param n Size
/// @param sx Number of split on x
/// @param sy Number of split on y
template < class T > 
T Ozaki(std::vector<T> a, std::vector<T> b, int n, int nb_threads){
    std::vector<std::vector<T>> xsplit;
    std::vector<std::vector<T>> ysplit;
    int sx,sy;
    sx = 0;
    sy = 0;
   
    Split_Ozaki(a,n,sx,xsplit);
    Split_Ozaki(b,n,sy,ysplit);
   
    std::vector<T> res(n*sx*sy);

    double result = 0;
    for (unsigned int k = 0; k<sy;k++) {
        for (unsigned int q = 0; q<sx;q++) {
            for (unsigned int z = 0; z < n ; z++){
                res[k*sx*n + q*n+z] = xsplit[q][z] * ysplit[k][z];
            } 
        }
    }
    
    result = SumK(res,n*sx*sy,10);
    return result;
}



/// @brief Ozaki split
/// @tparam T Float or Double
/// @param x Vector
/// @param n Size
/// @param sx Number of split on x
template < class T > 
void Split_Ozaki(std::vector<T> x,int n, int &sx,std::vector<std::vector<T>> &xsplit){
    xsplit.push_back(std::vector<double>(n));
    xsplit.push_back(std::vector<double>(n));
    double u = pow(2,-53);
    std::vector<T> tmp(n);
    int i = 0;
    double c1, c2, t, r;
    c1 = ceil((log2(1/u) + log2(n))/2);
    auto maxElement = std::max_element(x.begin(), x.end());
    double maxValue = *maxElement;
    c2 = std::abs(maxValue);     
    while (c2 !=0) 
    {
        xsplit.push_back(std::vector<double>(n));
        r = ceil(log2(c2));        
        t = std::pow(2, c1 + r);
        for (unsigned int j=0;j<n;j++) {
            xsplit[i][j] = ((x[j] + t) - t);
            x[j] = x[j] - xsplit[i][j];
        }
        auto maxElement = std::max_element(x.begin(), x.end());
        double maxValue = *maxElement;
        c2 = std::abs(maxValue);      
        // for (unsigned int z = 0; z < n ; z++){
        //     printf("%.30f\n",xsplit[i][z] ); 
        // } 
        i+=1;
    }
    sx=i+1;
}


