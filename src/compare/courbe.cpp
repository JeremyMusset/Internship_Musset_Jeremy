#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen;
    double sum;

    int size = 5;
    double cond = 100;

    nb_gen = 5;
    sum = 100;

    int sz = 5;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }

    // Time / Size
    int sz_time = 5;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_bad(sz_time);
    class std::vector<double> Time_common(sz_time);
    class std::vector<double> Time_mkl(sz_time);
    class std::vector<double> Time_blaspp(sz_time);

    VSize[0]=100;
    VSize[1]=500;
    VSize[2]=1000;
    VSize[3]=5000;
    VSize[4]=10000;  
    // VSize[5]=30000;
    // VSize[6]=50000;   
    // VSize[7]=80000;
    // VSize[8]=100000; 


    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf("\n __________________________________________ SIZE = %f __________________________________________ \n",*k);

        // Exec dot prod
        vec_gen(nb_gen,*k,cond,sum,1);
        compare_dot_prod(*k, cond, nb_gen,sum,Time,Error,1);
    
        // Save result
        Time_bad[i] = Time[1];
        Time_common[i] = Time[2];
        Time_mkl[i] = Time[3];
        Time_blaspp[i] = Time[4];
        i += 1;


        // printf("\nTime sequential bad dot prod : %.30f\n",Time[1]);
        // printf("Time sequential common dot prod : %.30f \n",Time[2]);
        // printf("Time sequential MKL : %.30f\n",Time[3]);
        // printf("Time sequential BLASPP : %.30f\n",Time[4]);
    }

    // printf("\nTime sequential BLASPP = \n");
    // for (unsigned int u=0; u<sz_time;u++){
    //     printf("%.30f\n",Time_blaspp[u]);
    // }

    // Error / cond

    int sz_err = 17;
    class std::vector<double> VCond(sz_err);
    class std::vector<double> Error_bad(sz_err);
    class std::vector<double> Error_common(sz_err);
    class std::vector<double> Error_mkl(sz_err);
    class std::vector<double> Error_blaspp(sz_err);

    VCond[0]=100;
    VCond[1]=500; 
    VCond[2]=1000;
    VCond[3]=5000; 
    VCond[4]=20000; 
    VCond[5]=30000; 
    VCond[6]=50000;
    VCond[7]=100000;
    VCond[8]=200000;
    VCond[9]=500000;
    VCond[10]=1000000;
    VCond[11]=3000000;
    VCond[12]=5000000;
    VCond[13]=10000000;
    VCond[14]=30000000;
    VCond[15]=500000000;
    VCond[16]=10000000000;

    i = 0;
    for (k = VCond.begin(); k != VCond.end(); k++){
        printf("\n __________________________________________ COND = %f __________________________________________\n",*k);
        // Exec dot prod
        vec_gen(nb_gen,size,*k,sum,1);
        compare_dot_prod(size, *k, nb_gen,sum,Time,Error,1);
    
        // Save result
        Error_bad[i] = mpfr_get_d(Error[1],MPFR_RNDN);
        Error_common[i] = mpfr_get_d(Error[2],MPFR_RNDN);
        Error_mkl[i] = mpfr_get_d(Error[3],MPFR_RNDN);
        Error_blaspp[i] = mpfr_get_d(Error[4],MPFR_RNDN);
        i += 1;
    
        // mpfr_printf("\nError sequential bad dot prod : %.30Rg \n",Error[1]);
        // mpfr_printf("Error sequential common dot prod : %.30Rg \n",Error[2]);
        // mpfr_printf("Error sequential MKL : %.30Rg \n",Error[3]);
        // mpfr_printf("Error sequential BLASPP : %.30Rg \n",Error[4]);
    }

    // printf("\nError sequential MKL = \n");
    // for (unsigned int u=0; u<sz_err;u++){
    //     printf("%.30f\n",Error_mkl[u]);
    // }


    // Print    
    plt::semilogx(VCond,Error_blaspp);

    plt::title("Relative error according to conditionning");
    plt::xlabel("Conditionning");
    plt::ylabel("Relative error");

    plt::show();

    return 0;
}