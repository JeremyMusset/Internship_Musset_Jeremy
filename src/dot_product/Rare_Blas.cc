#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include "../../include/error_free.h"
#include "../../include/dot_product.h"

#define PREC 53    // 53 in double 


template void Split_Veltkamp<double>(std::vector<double> x, int n,std::vector<double> xh,std::vector<double> xl);

template double HybridSum<double>(std::vector<double> p, int n);

template double OnlineExact<double>(std::vector<double> p, int n);

template double Rare_blas_prod<double>(std::vector<double> a, std::vector<double> b, int n, int inca, int incb);


/// @brief Common dot product (sdot lapack)
/// @tparam T Float or Double
/// @param a Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param b Vector of dimension( 1 + ( N - 1 )*abs( incb ) )
/// @param n Size
/// @param inca storage spacing between elements of a
/// @param incb storage spacing between elements of b
/// @return Result of a . b
template < class T > 
T Rare_blas_dot_prod(std::vector<T> a, std::vector<T> b, int n, int inca, int incb){

    return 0;
}

// Veltkamp's split function
/// @brief Function Split Veltkamp
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size
/// @param ah Result
/// @param al Result
template < class T >
void Split_Veltkamp(T x, int n,T &xh, T &xl)
{
  T b(n);
  T c(n);
  double a;
  double p;

  p = PREC:
  a = pow(2.0,ceil(p/2.0)) + 1;

    b = a*x;

    c = x-b;
 
    xh = b + c;

    xl = x - xh;
}

// Hybrid Sum function
/// @brief Function HybridSum
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size
template < class T >
std::vector<T> HybridSum(std::vector<T> p, int n)
{
    class std::vector<T> C(2048);
    T ph;
    T pl;
    int exp;
    for (unsigned int i =0; i<n;i++){
        Split_Veltkamp(p[i],n,ph,pl);
        frexp(ph,&exp);             // exp = E - bias
        C[exp] += ph;
        m = PREC;
        C[exp-ceil(m/2)] += pl;
    }
    return C;
}


// Online excat function
/// @brief Function OnlineExact
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size
template < class T >
std::vector<T> OnlineExact(std::vector<T> p, int n)
{
    class std::vector<T> Ch(2048);
    class std::vector<T> Cl(2048);
    T ph;
    T pl;
    int exp;
    double error;
    double tmp;
    for (unsigned int i =0; i<n;i++){
        frexp(ph,&exp);             // exp = E - bias
        FastTwoSum(Ch[exp], p,n,tmp,error);
        Ch[exp] = tmp;
        Cl[exp] += error;
    }
    return C;
}