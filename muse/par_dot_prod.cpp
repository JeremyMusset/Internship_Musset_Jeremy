#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"
#include "../include/parallelisation.h"


using namespace std;

#define P 150
#define NB_EXEC 20 // number of execution of each dot product to compute the performance.

int main() {
    int n, nb_gen, nb_threads;
    double cond, sum;
    n = 10;
    nb_gen = 10;
    nb_threads = 5;
    cond = 2;
    sum = 100;

    int sz = 5;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);
    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }
    par_dot_prod(n, cond, nb_gen,nb_threads,sum,Time,Error,sz);
    





    // Print
    printf("Temps mpfr : %.30f\n",Time[0]);
    printf("Temps common dot prod : %.30f \n",Time[1]);
    printf("Temps rare blas dot prod : %.30f\n",Time[2]);

    mpfr_printf("\nError dot prod : %.30Rg \n",Error[1]);
    mpfr_printf("Error rare blas : %.30Rg \n",Error[2]);




    return 0;    
}
    


