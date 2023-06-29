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
#include "../../include/dot_product.h"

// ALL FUNCTIONS
template
void TwoSum<double>(double a, double b, double & x, double & y);

template
double SumK<double>(std::vector<double> p, unsigned int n, unsigned int K);

template
void Split<double>(std::vector<double> a, int n, std::vector<double> &ah, std::vector<double> &al);

template 
void FastTwoSum<double>(double a,double b, double &s, double &err);

template 
void TwoProd<double>(std::vector<double> a, std::vector<double> b, int n,std::vector<double> &x, std::vector<double> &y);

template
double FMA<double>(double a, double b, double c);

template
void TwoMultFMA<double>(double a, double b, double &p, double &e);



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

// Fast two sum
/// @brief Function Fast two sum
/// @tparam T Float or Double
/// @param a T
/// @param b T
/// @param n Size
/// @param s solution
/// @param err error
template < class T >
void FastTwoSum(T a,T b, T &s, T &err)
{
  double tmp;
  s = a + b;
  tmp = s - a;
  err = tmp - b;
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
  
  for(unsigned int i = 0; i < n ; i++)
    res += tmp[i];
 
  // Reset rounding mode
  
  return res;
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
  p = 53;   // 53 in double 
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
/// @param x Result
/// @param y Result
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

// FMA function
/// @brief FMA function
template < class T >
T FMA(T a, T b, T c)
{
  return a*b+c; 
}

// 2MultFMA function
/// @brief 2MultFMA function
/// @param a Number
/// @param b Number
/// @param p Result
/// @param e Result
template < class T >
void TwoMultFMA(T a, T b, T &p, T &e)
{
  p = a*b;
  e = FMA(a,b,-p);
}


// Fast two sum
/// @brief Function Fast two sum
/// @tparam T Float or Double
/// @param a T
/// @param b T
/// @param n Size
/// @param s solution
/// @param err error
template < class T >
void Transform(std::vector<T> p,T q, T &t1, T &t2, T &pm, std::vector<T> &si , T &M)
{
  double phi = 1;

  auto maxElement = std::max_element(x.begin(), x.end());
  double maxValue = *maxElement;
  double mu  = std::abs(maxValue); 

  if (mu == 0){
    t1 = q;
    t2 = 0;
    pm = 0;
    si = 0;
    return ;
  }

  M = log2(p.size() + 2);
  
  si[0] = std::pow(2,M + std::ceil(log2(u)));

  std::vector<T> t;
  int m = 0;
  whyle (std::abs(t[m]) >= 




}