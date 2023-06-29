#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen = 8;
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
    int sz_time = 20;
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

    VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        // printf(" ___________ SIZE = %.20f ________________",*k);
        // Exec dot prod
        vec_gen_random(nb_gen,*k,3);
        compare_dot_prod(*k, cond, nb_gen,sum,Time,Error,3,8);

        // Gbytes / s
        // double qtt;
        // for (int j=1;j<7 ; j++) {
        //     qtt = *k * 2 * 8 ;
        //     Time[j] = qtt / Time[j] ;
        // }

        // Save result
        Time_standard[i] = Time[1];
        Time_common[i] = Time[2];
        Time_par_standard[i] = Time[3];
        Time_par_common[i] = Time[4];
        Time_mkl[i] = Time[5];
        Time_blaspp[i] = Time[6];


        // Compare threads
        // printf("Compute 4 ..... \n");
        // compare_dot_prod_th(*k, cond, nb_gen,sum,Time4,Error4,3,4);
        // printf("Compute 8 ..... \n");
        // compare_dot_prod_th(*k, cond, nb_gen,sum,Time8,Error8,3,8);
        // printf("Compute 16 ..... \n");
        // compare_dot_prod_th(*k, cond, nb_gen,sum,Time16,Error16,3,16);
        // Time_par_standard4[i] = Time4[0];
        // Time_par_common4[i] = Time4[1];
        // Time_par_standard8[i] = Time8[0];
        // Time_par_common8[i] = Time8[1];
        // Time_par_standard16[i] = Time16[0];
        // Time_par_common16[i] = Time16[1];


        i += 1;

        // printf("\n ___________________ TIME ____________________\n");

        // printf("\nTime sequential standard dot prod : %.30f\n",Time[1]);
        // printf("Time sequential common dot prod : %.30f \n",Time[2]);
        // printf("Time sequential MKL : %.30f\n",Time[5]);
        // printf("Time sequential BLASPP : %.30f\n\n",Time[6]);
        // printf("Time parallel standard dot prod : %.30f\n",Time[3]);
        // printf("Time parallel common dot prod : %.30f\n\n",Time[4]);

        // printf("\n ___________________ ERROR ____________________ \n");
        // mpfr_printf("\nError sequential standard dot prod : %.30Rg\n",Error[1]);
        // mpfr_printf("Error sequential common dot prod : %.30Rg \n",Error[2]);
        // mpfr_printf("Error sequential MKL : %.30Rg\n",Error[5]);
        // mpfr_printf("Error sequential BLASPP : %.30Rg\n\n",Error[6]);
        // mpfr_printf("Error parallel standard dot prod : %.30Rg\n",Error[3]);
        // mpfr_printf("Error parallel common dot prod : %.30Rg\n\n",Error[4]);
    }


    // // Log
    // class std::vector<double> T1(2);
    // class std::vector<double> T2(2);
    // T1[0] = VSize[0];
    // T1[1] = VSize[sz_time - 1];
    // T2[0] = Time_standard[0];
    // T2[1] = Time_standard[sz_time -1];
    // plt::loglog(T1,T2,"white");

    // // plt::plot(VSize,Time_standard,{{"color", "#09ED1A"},{"label", "Standard"}});
    // // plt::plot(VSize,Time_common,{{"color", "#00A1FF"},{"label", "Common"}});
    // // plt::plot(VSize,Time_par_standard,{{"color", "#126A09"},{"label", "Parallel standard "}});      // #A4F99B
    // // plt::plot(VSize,Time_par_common,{{"color", "#2F1AB5"},{"label", "Parallel common "}});          // #9BADF9
    // // plt::plot(VSize,Time_mkl,{{"color", "r"},{"label", "MKL"}});
    // // plt::plot(VSize,Time_blaspp,{{"color", "y"},{"label", "BLASPP"}});

    // // plt::plot(VSize,Time_par_standard4,{{"color", "#1FEC18"},{"label", "Parallel standard 4 threads"}});
    // // plt::plot(VSize,Time_par_common4,{{"color", "#318FED"},{"label", "Parallel common 4 threads"}});
    // // plt::plot(VSize,Time_par_standard8,{{"color", "#1D9B18"},{"label", "Parallel standard 8 threads"}});
    // // plt::plot(VSize,Time_par_common8,{{"color", "#2B67A4"},{"label", "Parallel common 8 threads"}});
    // // plt::plot(VSize,Time_par_standard16,{{"color", "#176414"},{"label", "Parallel standard 16 threads"}});
    // // plt::plot(VSize,Time_par_common16,{{"color", "#00197E"},{"label", "Parallel common 16 threads"}});
    
    
    // // Caches
    // std::vector<double> cachesL1 = {18000, 18000};
    // std::vector<double> cachesL2 = {468750, 468750};
    // std::vector<double> cachesL3 = {750000, 750000};
    // std::vector<double> heights = {0,20};
    // double height = 20;

    // // Tracé des lignes verticales
    // // plt::plot(cachesL1,heights,{{"linestyle","--"},{"label", "L1d Cache"}});
    // // plt::plot(cachesL2,heights,{{"linestyle","--"},{"label", "L2 Cache"}});
    // // plt::plot(cachesL3,heights,{{"linestyle","--"},{"label", "L3 Cache"}});


    // plt::title("Time of execution according to size");
    // plt::xlabel("Size of vector");
    // plt::ylabel("Time (in ns)");


    // plt::legend();    
    // plt::show();

    int a;
printf("\nTime_mkl= \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",Time_mkl[a]);
        }
        else{
            printf("%.10f, ",Time_mkl[a]);
        }
    }
    printf("};\n");
    return 0;
}