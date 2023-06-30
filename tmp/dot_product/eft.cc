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

template
void Transform<double>(std::vector<std::vector<double>> p, double g, double& T1, double& T2,std::vector<double> &p2, double& sigma, double& M);

template
void TransformK<double>(std::vector<std::vector<double>> p, double g, double& res, double& R,std::vector<double> &p2);

template
void NearSum<double>(std::vector<double> p,double &resN);

template
double pred<double>(double f);

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



template void Extract_vector<double>(std::vector<double> p,double sigma, std::vector<double> &p2, double &Tau);

// Extract vector
/// @brief Function Extract vector
/// @tparam T Float or Double
/// @param p vector
/// @param sigma double
/// @param p return vector
/// @param Tau double return
template < class T >
void Extract_vector(std::vector<T> p,T sigma, std::vector<T> &p2, T &Tau)
{
  std::vector<T> q;
  Tau = 0;
  int n = p.size();
  for (unsigned int i = 0;i<n;i++) {
    q[i] = sigma + p[i] - sigma;
    p2[i] = p[i] - q[i];
    Tau += q[i];
  }
}



// Transform
/// @brief Function Transform
/// @tparam T Float or Double
/// @param p vector
/// @param g double
/// @param T1 return
/// @param T2 return
/// @param sigma return
/// @param M return
template < class T >
void Transform(std::vector<std::vector<T>> p,T g, T &T1, T &T2, std::vector<T> &p2, T &sigma , T &M)
{
  double eps = std::pow(2,-53);
  double eta = std::pow(2,-1074);
  double n = p[0].size();
  auto maxElement = std::max_element(p[0].begin(), p[0].end());
  double maxValue = *maxElement;
  double mu  = std::abs(maxValue); 

  if (mu == 0){
    T1 = g;
    T2 = 0;
    sigma = 0;
    for (unsigned int i =0;i<n;i++) {
      p[0][i] = 0;
    }
    return ;
  }

  M = log2(n + 2);
  double phi = std::pow(2,2*M) * eps;

  std::vector<T> t;
  std::vector<T> si;
  std::vector<T> Tau;
  t[0] = g;
  si[0] = std::pow(2,M + std::ceil(log2(mu)));
  int m = 0;
  while ((std::abs(t[m]) < phi*si[m] || si[m] > 0.5*eta/eps) ){
    p.push_back(std::vector<double>(n));
    m = m + 1;
    Extract_vector(p[m-1],si[m-1],p[m],Tau[m]);
    t[m] = t[m-1] + Tau[m];
    si[m] = pow(2,M) * eps * si[m-1];
  }
  sigma = si[m-1];
  FastTwoSum(t[m-1],Tau[m],T1,T2);
}




// TransformK
/// @brief Function TransformK
/// @tparam T Float or Double
/// @param p vector
/// @param g double
/// @param res return double
/// @param R return double
/// @param p2 return vector
template < class T >
void TransformK(std::vector<std::vector<T>> p,T g, T &res, T &R, std::vector<T> &p2)
{
  int n = p[0].size();
  double T1, T2, sigma,M;
  Transform(p,g,T1,T2,p2,sigma,M);
  res = 0.0;
  for (unsigned int i = 0;i<n;i++){
    res += p2[i];
  }
  res += T2;
  res += T1;
  R = T2 - (res - T1);
}




// NearSum function
/// @brief Function Fast two sum
/// @tparam T Float or Double
/// @param p vector
/// @param resN result
template < class T >
void NearSum(std::vector<T> p,T &resN)
{
  double eps = std::pow(2,-53);
  double eta = std::pow(2,-1074);
  double T1, T2, res, delta, delta1, delta2, gamma, R, sigma,M;
  std::vector<std::vector<T>> pp;
  pp[0] = p;
  std::vector<T> p2;
  Transform(pp,0.0,T1,T2,p2,sigma,M);
  double T2p = T2;
  int n = p.size();
  for (unsigned int i=0; i<n;i++){
    T2p += p2[i];
  }

  FastTwoSum(T1,T2p,res,delta);

  if (delta == 0) {
    resN = res;
    return ;
  }
  T tmp;
  std::vector<T> vtmp;
  std::vector<std::vector<T>> ptmp;
  R = T2 - (res-T1);
  if (delta < 0){
    gamma = pred(res) - res;
    if (gamma == -1 * eta){
      resN = res;
      return ;
    }
    delta1 = gamma / 2;
    ptmp[0] = p2;
    TransformK(ptmp,R-delta1,delta2,tmp,vtmp);
    if (delta2 > 0){
      resN = res;
    }
    else {
      if (delta2 > 0){
        resN=pred(res);
      }
      else{
        resN = res + delta1;
      }
    }
  
  
  }

}



// pred
/// @brief give the float pred 
/// @tparam T Float or Double
/// @param f argumennt
template < class T >
T pred(T f)
{
  T previous = std::nextafter(f, -std::numeric_limits<T>::infinity());
  return previous;
}