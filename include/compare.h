// #include <omp.h>
#include <vector> 
#include <mpfr.h> 

template < class T >
void compare_dot_prod(int n,double required_cond, int nb_gen, double sum, class std::vector<T> &Time, class std::vector<mpfr_t> &Error, int q);