#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/serial.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000

int main() {
    int n, nb_gen;
    double cond, sum;
    n = 100;
    nb_gen = 10;
    cond = 2;
    sum = 100;

    int sz = 5;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<5;i++){
        mpfr_init2(Error[i], P);
        mpfr_set_d(Error[i],0,MPFR_RNDN);
        // mpfr_printf("\nError: %.30Rg \n",Error[i]);
    }
   

    vec_gen(nb_gen,n,cond,sum);

    seq_dot_prod(n, cond, nb_gen,sum,Time,Error,1);
    
    // Print
    printf("\nTemps mpfr : %.30f\n",Time[0]);
    printf("Temps common dot prod : %.30f \n",Time[1]);
    printf("Temps rare blas dot prod : %.30f\n",Time[2]);

    mpfr_printf("\nError dot prod : %.30Rg \n",Error[1]);
    mpfr_printf("Error rare blas : %.30Rg \n\n",Error[2]);

    return 0;  
}


// ../src/generation/*.cc ../src/dot_product/*.cc ../rounding_error/*.cc
