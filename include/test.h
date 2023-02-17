#include <vector>
#include <mpfr.h>

template < class T >
void test_par_dot_prod(std::vector<T> a_global, std::vector<T> b_global, int n,double required_cond, int &par_number_common,int &par_number_rare_hybrid,int &par_number_rare_online, int nb_threads, double sum,int l,mpfr_t eps);

template < class T >
void test_seq_dot_prod(std::vector<T> a,std::vector<T> b,int n,double required_cond, int &seq_number_common,int &seq_number_rare_hybrid,int &seq_number_rare_online,  double sum,int l,mpfr_t eps);