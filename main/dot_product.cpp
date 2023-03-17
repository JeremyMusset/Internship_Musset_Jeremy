#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"
#include "../include/parallelisation.h"
#include "../include/serial.h"
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
    int sz = 7;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }
    
    vec_gen(nb_gen,n,cond,sum,2);

    compare_dot_prod(n, cond, nb_gen,sum,Time,Error,2,8);
    
    // Print
    printf("_________________________ TIME _________________________\n\n");
    printf("\nTime sequential mpfr : %.30f\n",Time[0]);
    printf("Time sequential standard dot prod : %.30f \n",Time[1]);
    printf("Time sequential common dot prod : %.30f \n",Time[2]);
    printf("Time sequential mkl dot prod : %.30f\n",Time[3]);
    printf("Time sequential blaspp dot prod : %.30f\n",Time[4]);

    printf("\nTime parallel standard dot prod : %.30f \n",Time[5]);
    printf("Time parallel common dot prod : %.30f \n",Time[6]);

    // Error
     printf("\n_________________________ TIME _________________________\n\n");
    mpfr_printf("Error sequential standard dot prod : %.30Rg \n",Error[1]);
    mpfr_printf("Error sequential common dot prod : %.30Rg \n",Error[2]);
    mpfr_printf("Error sequential mkl dot prod : %.30Rg \n",Error[3]);
    mpfr_printf("Error sequential blaspp dot prod : %.30Rg \n",Error[4]);

    mpfr_printf("\nError parallel standard dot prod : %.30Rg \n",Error[5]);
    mpfr_printf("Error parallel common dot prod : %.30Rg \n",Error[6]);

    return 0;    
}
    


