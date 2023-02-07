#include<vector>

template < class T > 
T common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);

template < class T > 
T Rare_blas_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);

template < class T > 
void Split_Veltkamp(std::vector<T> x, int n,std::vector<T> xh,std::vector<T> xl);

template < class T > 
T HybridSum(std::vector<T> p, int n);

template < class T > 
T OnlineExact(std::vector<T> p, int n);
