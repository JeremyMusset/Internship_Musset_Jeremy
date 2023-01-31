#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <vector>
#include <algorithm>
#include <cassert>
#include <float.h>
#include "../../include/gen_random_number.h"

template < class T >
void TwoSum(T a, T b, T& x, T& y);

template < class T >
T SumK(std::vector<T> p, unsigned int n, unsigned int K);

template < class T >
void Split(T& a, int n, T&ah, T&al);

template < class T >
void TwoProd(T& a, T&b, int n, T& x, T& y);



// Two sum function
template < class T >
void TwoSum(T a, T b, T& x, T& y)
{
  T z = 0.0;
  x = a + b;
  z = x - a;
  y = (a - (x - z)) + (b - z);
}

// Sum K function
template < class T >
T SumK(std::vector<T> p, unsigned int n, unsigned int K){
  std::vector<T> tmp = p;
  T res = 0.;
  
  // Set rounding to nearest even mode	
  for(unsigned int k = 1 ; k <= K-1 ; k++){
    for(unsigned int i = 1; i < n ; i++){
      T tmp_res = 0, tmp_err = 0;
      TwoSum<T> (tmp[i], tmp[i-1], tmp_res, tmp_err);
      tmp[i] = tmp_res; tmp[i-1] = tmp_err;
    }
  }
}

// Split function
template < class T >
void Split(T& a, int n, T&ah, T&al)
{
  class std::vector<double> c(n);
  // f = 2^p/2 +1
  double f;
  double p;
  p = 32;
  f = pow(2.0,ceil(p/2.0)) + 1;
  printf("%lf",f);
  for (unsigned int i=0;i<n;i++) {
    c[i] = f*a[i];
  }
  for (unsigned int i=0;i<n;i++) {
    ah[i] = c[i] - (c[i] - a[i]);
  }
  for (unsigned int i=0;i<n;i++) {
    al[i] = a[i] - ah[i];
  }
}


// Two prod function
template < class T >
void TwoProd(T& a, T&b, int n, T& x, T& y)
{
  for (unsigned int i=0;i<n;i++) {
    x[i] = a[i] * b[i];
  }
  class std::vector<double> ah(n);
  class std::vector<double> al(n);
  class std::vector<double> bh(n);
  class std::vector<double> bl(n);
  Split(a, n, ah, al);
  Split(b, n, bh, bl);
  for (unsigned int i=0;i<n;i++) {
    y[i] = al[i] * bl[i] - ((( x[i] - ah[i] * bh[i] ) - al[i] * bh[i] ) - ah[i] * bl[i]);
  }
}
