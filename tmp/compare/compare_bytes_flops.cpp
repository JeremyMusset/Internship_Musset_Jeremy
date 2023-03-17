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
    int sz = 7;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    class std::vector<double> Time4(2);
    class std::vector<mpfr_t> Error4(2);
    class std::vector<double> Time8(2);
    class std::vector<mpfr_t> Error8(2);
    class std::vector<double> Time16(2);
    class std::vector<mpfr_t> Error16(2);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }

    for (unsigned int i; i<2;i++){
        mpfr_init2(Error4[i], P);
        mpfr_init2(Error8[i], P);
        mpfr_init2(Error16[i], P);
        
    }


    // Time / Size
    int sz_time = 11;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_common(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_par_common(sz_time);
    class std::vector<double> Time_mkl(sz_time);
    class std::vector<double> Time_blaspp(sz_time);

    class std::vector<double> Time_par_standard4(sz_time);
    class std::vector<double> Time_par_common4(sz_time);
    class std::vector<double> Time_par_standard8(sz_time);
    class std::vector<double> Time_par_common8(sz_time);
    class std::vector<double> Time_par_standard16(sz_time);
    class std::vector<double> Time_par_common16(sz_time);

    VSize = {5000,10000,50000,100000,300000,500000,800000,1000000,1500000,2000000,3000000};


    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        compare_dot_prod(*k, cond, nb_gen,sum,Time,Error,3,8);

        // Gbytes / s
        double qtt;
        for (int j=1;j<7 ; j++) {
            qtt = *k * 2 * 8 * 1000;
            Time[j] = qtt / Time[j] ;
        }

        // Save result
        Time_standard[i] = Time[1];
        Time_common[i] = Time[2];
        Time_par_standard[i] = Time[3];
        Time_par_common[i] = Time[4];
        Time_mkl[i] = Time[5];
        Time_blaspp[i] = Time[6];

        i += 1;
    }


    int a;
    double mmoy_standard = 0;
    double mmoy_common = 0;
    double mmoy_mkl = 0;
    double mmoy_blaspp = 0;
    for (a=0; a<sz_time;a++){
        mmoy_standard += Time_standard[a];
        mmoy_common += Time_common[a];
        mmoy_mkl += Time_mkl[a];
        mmoy_blaspp += Time_blaspp[a];   
    }

    mmoy_standard /= sz_time;
    mmoy_common /= sz_time;
    mmoy_mkl /= sz_time;
    mmoy_blaspp /= sz_time;

    printf("Mbytes/s of standard dot product = %.30f \n",mmoy_standard);
    printf("Mbytes/s of common dot product = %.30f \n",mmoy_common);
    printf("Mbytes/s of mkl dot product = %.30f \n",mmoy_mkl);
    printf("Mbytes/s of blaspp dot product = %.30f \n",mmoy_blaspp);

    double pstandard = mmoy_standard / 8;
    double pcommon = mmoy_common / 8;
    double pmkl = mmoy_mkl / 1;
    double pblaspp = mmoy_blaspp / 1;

    printf("MFLOPs/s of standard dot product = %.30f \n",pstandard);
    printf("MFLOPs/s of common dot product = %.30f \n",pcommon);
    // printf("Mbytes/s of mkl dot product = %.30f \n",pmkl);
    // printf("Mbytes/s of blaspp dot product = %.30f \n",pblaspp);



    return 0;
}