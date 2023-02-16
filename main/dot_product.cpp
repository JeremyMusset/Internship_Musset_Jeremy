#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"
#include "../include/parallelisation.h"
#include "../include/serial.h"


using namespace std;

#define P 4000

int main() {
    int n, nb_gen, nb_threads;
    double cond, sum;
    n = 10;
    nb_gen = 2;
    nb_threads = 4;
    cond = 2;
    sum = 100;

    int sz = 6;
    class std::vector<double> Time_seq(sz);
    class std::vector<mpfr_t> Error_seq(sz);
    class std::vector<double> Time_par(sz);
    class std::vector<mpfr_t> Error_par(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error_seq[i], P);
        mpfr_init2(Error_par[i], P);
    }

    vec_gen(nb_gen,n,cond,sum);


    seq_dot_prod(n, cond, nb_gen,sum,Time_seq,Error_seq,2);
    par_dot_prod(n, cond, nb_gen,nb_threads,sum,Time_par,Error_par,2);
    
    // Print
    printf("\nTime sequential mpfr : %.30f\n",Time_seq[0]);
    printf("Time sequential common dot prod : %.30f \n",Time_seq[1]);
    printf("Time sequential rare blas hybrid dot prod : %.30f\n",Time_seq[2]);
    printf("Time sequential rare blas online dot prod : %.30f\n",Time_seq[3]);

    printf("\nTime parallel mpfr : %.30f\n",Time_par[0]);
    printf("Time parallel common dot prod : %.30f \n",Time_par[1]);
    printf("Time parallel rare blas hybrid dot prod : %.30f\n",Time_par[2]);
    printf("Time parallel rare blas online dot prod : %.30f\n\n",Time_par[3]);

    mpfr_printf("\nError sequential common dot prod : %.30Rg \n",Error_seq[1]);
    mpfr_printf("Error sequential rare blas hybrid dot prod : %.30Rg \n",Error_seq[2]);
    mpfr_printf("Error sequential rare blas online dot prod : %.30Rg \n",Error_seq[3]);

    mpfr_printf("\nError parallel common dot prod : %.30Rg \n",Error_par[1]);
    mpfr_printf("Error parallel rare blas hybrid dot prod: %.30Rg \n",Error_par[2]);
    mpfr_printf("Error parallel rare blas online dot prod: %.30Rg \n\n",Error_par[3]);

    return 0;    
}
    


