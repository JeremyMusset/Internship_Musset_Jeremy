#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"
#include <thread>

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
    int sz_time = 10;
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

    VSize = {5000,10000,50000,100000 ,500000,1000000,1500000,3000000,5000000,10000000};


    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf(" ___________ SIZE = %.20f ________________",*k);
        // Exec dot prod
        compare_dot_prod_thread(*k, cond, nb_gen,sum,Time,Error,3,8);

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
        printf("\n\n ~~~~~~~~~~~~~~~~~ With vectorisation ~~~~~~~~~~~~~~~~~  \n");
        printf("\nVTime_standard = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_standard[a]);
            }
            else{
                printf("%.10f, ",Time_standard[a]);
            }
        }
        printf("};\n");


        printf("\nVTime_common = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_common[a]);
            }
            else{
                printf("%.10f, ",Time_common[a]);
            }
        }
        printf("};\n");

        printf("\nVTime_mkl = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_mkl[a]);
            }
            else{
                printf("%.10f, ",Time_mkl[a]);
            }
        }
        printf("};\n");

        printf("\nVTime_blaspp = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_blaspp[a]);
            }
            else{
                printf("%.10f, ",Time_blaspp[a]);
            }
        }
        printf("};\n");

        printf("\nVTime_par_standard = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_par_standard[a]);
            }
            else{
                printf("%.10f, ",Time_par_standard[a]);
            }
        }
        printf("};\n");

        printf("\nVTime_par_common = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_par_common[a]);
            }
            else{
                printf("%.10f, ",Time_par_common[a]);
            }
        }
        printf("};\n");

    return 0;
}