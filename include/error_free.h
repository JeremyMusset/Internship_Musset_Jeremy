#include<vector>
#include<mpfr.h>

void dot_prod_mpfr(int n, mpfr_t * a, mpfr_t * b, mpfr_t c);

int import_vec_mpfr(mpfr_t ** a, mpfr_t ** b, char * fic);

template < class T > void TwoSum(T a, T b, T& x, T& y);

template < class T >
T SumK(std::vector<T> p, unsigned int n, unsigned int K);

template < class T >
void Split(std::vector<T> a, int n,std::vector<T> &ah,  std::vector<T> &al);

template < class T >
void TwoProd(std::vector<T> a,  std::vector<T> b, int n,std::vector<T> &x,  std::vector<T> &y);

template < class T >
void FastTwoSum(T a,T b, int n, T &s, T &err);


