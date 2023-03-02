// #include <omp.h>
#include <vector> 
#include <mpfr.h> 
#include <mkl.h>
#include <mkl_cblas.h>

template < class T >
void compare_dot_prod(int n,double required_cond, int nb_gen, double sum, class std::vector<T> &Time, class std::vector<mpfr_t> &Error, int q, int nb_threads);


template < class T >
void compare_dot_prod_th(int n,double required_cond, int nb_gen, double sum, class std::vector<T> &Time, class std::vector<mpfr_t> &Error, int q, int nb_threads);

template < class T >
void compare_dot_prod_cond(int n,double required_cond, int nb_gen, double sum ,std::vector<T> &Error_standard, std::vector<T> &Error_common, std::vector<T> &Error_par_standard, std::vector<T> &Error_par_common, std::vector<T> &Error_mkl, std::vector<T> &Error_blaspp, int q, int nb, int nb_threads);

void compare_dot_prod_test(int n, int nb_gen, int q);