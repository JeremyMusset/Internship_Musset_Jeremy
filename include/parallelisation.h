#include <omp.h>
#include <vector> 
#include <mpfr.h> 

template < class T >
void par_dot_prod(int n,double required_cond, int nb_gen, int nb_threads, double sum, class std::vector<T> &Time, class std::vector<mpfr_t> &Error, int sz );