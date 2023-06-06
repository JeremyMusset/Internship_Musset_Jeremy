#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"
#include "random"

using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen = 2;
    double sum = 200;
    int size = 10;
    double cond = 200;

    int sz_err = 2;
    class std::vector<double> VCond(sz_err);
    VCond = {100, 5000} ; 

    std::vector<double> b(size);
    std::vector<double> a(size);
    class std::vector<double> RCond(nb_gen * sz_err);

    int i = 0;
    vector<double>::iterator k;
    for (k = VCond.begin(); k != VCond.end(); k++){
        printf(" \n \n~~~~~~~~~~~~~~~~~~~~~~~~~~~ GEN FOR COND = %lf ~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n",*k);
        vec_gen_cond(nb_gen,size,*k,sum,1,RCond,i);
        printf(" \n \n~~~~~~~~~~~~~~~~~~~~~~~~~~~ END GEN ~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n");
        for (unsigned int l=0;l<nb_gen;l++){
            // printf(" \n \n~~~~~~~~~~~~~~~~~~~~~~~~~~~ DATA %d ~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n",l);
            std::vector<double> vec;
            import_vec(vec, l,1);
            for (unsigned int i=0;i<size;i++){
                a[i] = vec[i+1];
                b[i] = vec[size+1+i]; 
            }
            printf("a = \n");
            for (unsigned int i=0;i<size;i++){
                printf("%.20f \n",a[i]);
            }
            printf(" \nb = \n");
            for (unsigned int i=0;i<size;i++){
                printf("%.400f \n",b[i]);
            }
        }
    }

    return 0;
}