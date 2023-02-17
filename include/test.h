#include <vector>
#include <mpfr.h>

template < class T >
void test_par_dot_prod(std::vector<T> a_global, std::vector<T> b_global, int n,double required_cond, int &number, int nb_threads, double sum,mpfr_t eps);

template < class T >
void test_seq_dot_prod(std::vector<T> a,std::vector<T> b,int n,double required_cond, int &number,  double sum);