#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen = 5;
    double sum = 200; 
    double cond = 100;
    int sz = 9;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }

    // Time / Size
    int sz_time = 3;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_common(sz_time);
    class std::vector<double> Time_mkl(sz_time);
    class std::vector<double> Time_blaspp(sz_time);

    VSize = {5000,10000,30000} ;


    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf("\n __________________________________________ SIZE = %f __________________________________________ \n\n",*k);

        // Exec dot prod
        printf("Generation ..... \n");
        vec_gen_random(nb_gen,*k,3);
        printf("Generation clear \n\n");
        printf("Compute ..... \n");
        compare_dot_prod(*k, cond, nb_gen,sum,Time,Error,3);
        // Save result
        Time_standard[i] = Time[1];
        Time_common[i] = Time[2];
        Time_mkl[i] = Time[3];
        Time_blaspp[i] = Time[4];
        i += 1;


        printf("\nTime sequential standard dot prod : %.30f\n",Time[1]);
        printf("Time sequential common dot prod : %.30f \n",Time[2]);
        printf("Time sequential MKL : %.30f\n",Time[3]);
        printf("Time sequential BLASPP : %.30f\n\n",Time[4]);

    }


    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_standard[0];
    T2[1] = Time_standard[sz_time -1];
    plt::loglog(T1,T2,"white");

    plt::plot(VSize,Time_standard,{{"color", "g"},{"label", "Standard"}});
    plt::plot(VSize,Time_common,{{"color", "b"},{"label", "Common"}});
    plt::plot(VSize,Time_mkl,{{"color", "r"},{"label", "MKL"}});
    plt::plot(VSize,Time_blaspp,{{"color", "y"},{"label", "BLASPP"}});
    
    

    plt::title("Time of execution according to size");
    plt::xlabel("Size of vector");
    plt::ylabel("Time (in ns)");
    

    plt::legend();    
    plt::show();

    return 0;
}