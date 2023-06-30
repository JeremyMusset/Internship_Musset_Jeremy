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
T Ozaki(std::vector<T> a, std::vector<T> b, int n, int nb_threads);

template < class T > 
T Ozaki_par(std::vector<T> a, std::vector<T> b, int n, int nb_threads);

template < class T > 
void Split_Ozaki(std::vector<T> x,int n, int &sx, std::vector<std::vector<T>> &xsplit);


template < class T > 
T Par_rare_blas_dot_prod(std::vector<T> a, std::vector<T> b, int n,int nb_threads);

template < class T > 
T Par_rare_blas(std::vector<T> a, std::vector<T> b, int n,int nb_threads);

template < class T > 
void common_dot_prod_thread(std::vector<T> a, std::vector<T> b, int n, int incx, int incy, double &sdot);

template < class T > 
T common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);

template < class T > 
T par_common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy,int nb_threads);

template < class T > 
T Rare_blas_dot_prod_hybrid(std::vector<T> a, std::vector<T> b, int n);

template < class T > 
T Rare_blas_dot_prod_online(std::vector<T> a, std::vector<T> b, int n);

template < class T > 
T Rare_blas_dot_prod_online_par(std::vector<T> a, std::vector<T> b,int n, int nb_threads);

template < class T > 
void Split_Veltkamp(T x,T &xh,T &xl);

template < class T > 
std::vector<T> HybridSum(std::vector<T> p, int n);

template < class T > 
void HybridSum_4096(std::vector<T> p, int n,std::vector<T> &C);

template < class T > 
void DoubleHybridSum_4096(std::vector<T> p1,std::vector<T> p2, int n,std::vector<T> &C);

template < class T > 
void OnlineExact(std::vector<T> p, int n,std::vector<T> &Ch, std::vector<T> &Cl);

template < class T > 
void OnlineExact_3072(std::vector<T> p, int n,std::vector<T> &Ch, std::vector<T> &Cl);

template < class T > 
void OnlineExact_4096(std::vector<T> p, int n,std::vector<T> &C);

template < class T > 
void DoubleOnlineExact_4096(std::vector<T> p1, std::vector<T> p2, int n,std::vector<T> &C);

template < class T > 
void DoubleOnlineExact(std::vector<T> p1, std::vector<T> p2, int n,std::vector<T> &Ch,std::vector<T> &Cl);

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

template < class T > 
void Transform(std::vector<std::vector<T>> p,T g, T &T1, T &T2, std::vector<T> &p2, T &sigma , T &M);

template < class T > 
void TransformK(std::vector<std::vector<T>> p,T g, T &res, T &R, std::vector<T> &p2);

template < class T > 
void NearSum(std::vector<T> p, T &resN);

template < class T > 
void Extract_vector(std::vector<T> p,T sigma, std::vector<T> &p2, T &Tau);

template < class T > 
T pred(T f);


