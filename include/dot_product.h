#include<vector>
#include <mpfr.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>



template < class T > 
T common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);

template < class T > 
T Rare_blas_dot_prod_hybrid(std::vector<T> a, std::vector<T> b, int n);

template < class T > 
T Rare_blas_dot_prod_online(std::vector<T> a, std::vector<T> b, int n);

template < class T > 
void Split_Veltkamp(T x,T &xh,T &xl);

template < class T > 
std::vector<T> HybridSum(std::vector<T> p, int n);

template < class T > 
void OnlineExact(std::vector<T> p, int n,std::vector<T> &Ch, std::vector<T> &Cl);

template < class T >
T FastSum(std::vector<T> x,int n,std::vector<T> q, int L, int cq);

template < class T >
void IFastSum(std::vector<T> p, bool allowRec,T &res);

template < class T > 
T ulp(T x);

template < class T > 
int sign(T val);

template < class T>
T magn(T f);

template < class T >
bool half_ulp(T val);

