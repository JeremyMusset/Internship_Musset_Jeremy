#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <math.h>
#include <vector>
#include <algorithm>
#include <cassert>
#include <float.h>
#include "../../include/error_free.h"

// ALL FUNCTIONS
template < class T >
void TwoSum(T a, T b, T& x, T& y);

template < class T >
T SumK(std::vector<T> p, unsigned int n, unsigned int K);

template < class T >
void Split(std::vector<T> a, int n, std::vector<T> &ah, std::vector<T> &al);

template 
void TwoProd<double>(std::vector<double> a, std::vector<double> b, int n,std::vector<double> &x, std::vector<double> &y);


template < class T >
T inline round(T x){
	return ((x)>0)? (int((x)+0.5)):(int((x)-0.5));
}


// Two sum function
/// @brief function Twosum
/// @tparam T Float or Double
/// @param a Vector a 
/// @param b Vector b
/// @param x Result
/// @param y Result
template < class T >
void TwoSum(T a, T b, T& x, T& y)
{
  T z = 0.0;
  x = a + b;
  z = x - a;
  y = (a - (x - z)) + (b - z);
}

// Sum K function
/// @brief K * Twosum
/// @tparam T Float or Double
/// @param p Vector
/// @param n size
/// @param K Number of repetition
/// @return 
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
/// @brief Function Split
/// @tparam T Float or Double
/// @param a Vector
/// @param n Size
/// @param ah Result
/// @param al Result
template < class T >
void Split(std::vector<T> a, int n,std::vector<T> &ah,  std::vector<T> &al)
{
  class std::vector<T> c(n);
  double f;
  double p;
  p = 2;
  f = pow(2.0,ceil(p/2.0)) + 1;
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
/// @brief Transform a prod in a sum
/// @tparam T Float or Double
/// @param a Vector
/// @param b Vector
/// @param n Size
template < class T >
void TwoProd(std::vector<T> a, std::vector<T> b, int n,std::vector<T> &x, std::vector<T> &y)
{
  class std::vector<double> ah(n);
  class std::vector<double> al(n);
  class std::vector<double> bh(n);
  class std::vector<double> bl(n);
  class std::vector<double> tmp(n);

  // x
  for (unsigned int i=0;i<n;i++) {
    x[i] = a[i] * b[i];
  }

  // split
  Split(a,n,ah,al);
  Split(b,n,bh,bl);

  // y
  for (unsigned int i=0;i<n;i++) {
    y[i] = al[i] * bl[i] - ((( x[i] - ah[i] * bh[i] ) - al[i] * bh[i] ) - ah[i] * bl[i]);
  }
  
}
