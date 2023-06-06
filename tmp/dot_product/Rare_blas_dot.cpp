#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include <omp.h>

using namespace std;

#define P 150
#define SMAX 25      // 20 + a with a such as nb of files = 10^a
#define NB_EXEC 20   // number of execution of each dot product to compute the performance.


int main() {
    double res, res_rare;
    double glores, gloerr;
    int i;
    int n=5;
    int nb_threads=4;
    std::vector<double> a(n);
    std::vector<double> b(n);
    for (int i =0; i<n;i++){
        a[i] = i;
        b[i] = i+1;
    }
    res = 40;

    double testhy;    
    testhy = Rare_blas_dot_prod_hybrid(a,b,n);
    printf("SEQUENTIAL TESTS : \ntest hybrid : %.20f \n",testhy);

    double teston;
    teston = Rare_blas_dot_prod_online(a,b,n);
    printf("test online : %.20f \n \n \nPARALLEL TEST : \n",teston);

    double testpar;
    testpar = Par_rare_blas_dot_prod(a,b,n,nb_threads);
    printf("test par: %.20f \n",testpar);
    
}


