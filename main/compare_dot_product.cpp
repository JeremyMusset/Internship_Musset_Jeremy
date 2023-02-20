#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"
#include "../include/compare.h"


using namespace std;

#define P 4000

int main() {
    int n, nb_gen, nb_threads;
    double cond, sum;
    n = 1000;
    nb_gen = 12;
    nb_threads = 4;
    cond = 5;
    sum = 100;

    int sz = 3;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }
    
    vec_gen(nb_gen,n,cond,sum);

    compare_dot_prod(n, cond, nb_gen,sum,Time,Error,2);
    
    // Print
    printf("\nTime sequential mpfr : %.30f\n",Time[0]);
    printf("Time sequential common dot prod : %.30f \n",Time[1]);
    printf("Time sequential MKL : %.30f\n",Time[2]);

    mpfr_printf("\nError sequential common dot prod : %.30Rg \n",Error[1]);
    mpfr_printf("Error sequential MKL : %.30Rg \n",Error[2]);


    return 0;
}