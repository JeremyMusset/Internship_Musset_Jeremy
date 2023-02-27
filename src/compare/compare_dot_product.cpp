#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"


using namespace std;

#define P 4000

int main() {
    int n;
    int nb_gen, nb_threads;
    double cond, sum;
    n = 1300000;
    nb_gen = 2;
    nb_threads = 4;
    cond = 5;
    sum = 100;

    int sz = 5;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);
    

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }
    printf("________________________________________________________ Generation ____________________________________________________ \n\n");
    vec_gen_random(nb_gen,n,3);
    
    printf("\n________________________________________________________ Compute ____________________________________________________ \n\n");
    compare_dot_prod(n,cond,nb_gen,sum,Time,Error,3);
    
    // Print
    printf("\nTime sequential mpfr : %.30f\n",Time[0]);
    printf("Time sequential standard dot prod : %.30f \n",Time[1]);
    printf("Time sequential common dot prod : %.30f \n",Time[2]);
    printf("Time sequential MKL : %.30f\n",Time[3]);
    printf("Time sequential BLASPP : %.30f\n",Time[4]);

    mpfr_printf("\nError sequential standard dot prod : %.30Rg \n",Error[1]);
    mpfr_printf("Error sequential common dot prod : %.30Rg \n",Error[2]);
    mpfr_printf("Error sequential MKL : %.30Rg \n",Error[3]);
    mpfr_printf("Error sequential BLASPP : %.30Rg \n",Error[4]);


    return 0;
}