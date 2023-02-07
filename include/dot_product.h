#include<vector>

template < class T > 
T common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);

template < class T > 
T Rare_blas_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);

template < class T > 
void Split_Veltkamp(T x,T &xh,T &xl);

template < class T > 
std::vector<T> HybridSum(std::vector<T> p, int n);

template < class T > 
void OnlineExact(std::vector<T> p, int n,std::vector<T> &Ch, std::vector<T> &Cl);
