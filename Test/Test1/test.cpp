#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/test.h"


int main() {
    int n, nb_gen, nb_threads;
    double cond, sum;
    mpfr_t eps;

    n = 10;
    nb_gen = 3;
    nb_threads = 4;
    cond = 5;
    sum = 100;
    
    class std::vector<double> a(n);
    class std::vector<double> b(n);


    for (unsigned int i; i<nb_gen;i++){
    generate_v(a,b,n,cond,sum);

    // Print vector 
    printf("a = \n");
    for (unsigned int i=0; i<n;i++){
        printf("%.30f\n",a[i]);
    }
    printf("b = \n");
    for (unsigned int i=0; i<n;i++){
        printf("%.30f\n",b[i]);
    }


    // test_seq_dot_prod(a,b,n, cond, nb_gen,sum, eps);
    // test_par_dot_prod(a,b,n, cond, nb_gen,nb_threads,sum, eps);
    }



}