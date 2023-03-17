#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"

//   Timing cached reads:   37214 MB in  2.00 seconds = 18635.96 MB/sec
//   Timing buffered disk reads: 9180 MB in  3.00 seconds = 3060.00 MB/sec




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
    int sz_time = 20;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_common(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_par_common(sz_time);
    class std::vector<double> Time_mkl(sz_time);
    class std::vector<double> Time_blaspp(sz_time);

    class std::vector<double> VTime_standard(sz_time);
    class std::vector<double> VTime_common(sz_time);
    class std::vector<double> VTime_par_standard(sz_time);
    class std::vector<double> VTime_par_common(sz_time);
    class std::vector<double> VTime_mkl(sz_time);
    class std::vector<double> VTime_blaspp(sz_time);

     class std::vector<double> OTime_standard(sz_time);
    class std::vector<double> OTime_common(sz_time);
    class std::vector<double> OTime_par_standard(sz_time);
    class std::vector<double> OTime_par_common(sz_time);
    class std::vector<double> OTime_mkl(sz_time);
    class std::vector<double> OTime_blaspp(sz_time);

    class std::vector<double> OVTime_standard(sz_time);
    class std::vector<double> OVTime_common(sz_time);
    class std::vector<double> OVTime_par_standard(sz_time);
    class std::vector<double> OVTime_par_common(sz_time);
    class std::vector<double> OVTime_mkl(sz_time);
    class std::vector<double> OVTime_blaspp(sz_time);

    class std::vector<double> MaxTime(sz_time);


     VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
    
 //-------------- NO VEC  -------------

    Time_standard = 
 {18182.2000000000, 35392.8000000000, 108207.0000000000, 175488.6000000000, 250523.0000000000, 351584.2000000000, 672116.6000000000, 969664.0000000000, 1384357.0000000000, 1664990.2000000000, 2339912.0000000000, 2389432.3999999999, 2715126.3999999999, 3131390.0000000000, 4776452.7999999998, 6450637.7999999998, 0.0000000000, 0.0000000000, 0.0000000000, 0.0000000000};
//-------------- VEC : -O3   -------------

OTime_standard = 
 {7451.0000000000, 14643.4000000000, 22282.4000000000, 30264.2000000000, 37908.6000000000, 45278.8000000000, 58552.4000000000, 72863.8000000000, 111512.0000000000, 145916.2000000000, 290689.4000000000, 440654.8000000000, 601261.8000000000, 745982.8000000000, 957312.4000000000, 1127976.3999999999, 1296335.8000000000, 1512604.6000000001, 2263222.0000000000, 3003685.0000000000};

//-------------- VEC 1 : -O3 -march=native   -------------
OVTime_standard = 
 {4525.4000000000, 8957.6000000000, 13364.4000000000, 17988.2000000000, 22697.0000000000, 26738.0000000000, 35979.6000000000, 45487.8000000000, 66846.2000000000, 90026.6000000000, 181157.2000000000, 280169.0000000000, 378131.8000000000, 468263.2000000000, 580937.4000000000, 702089.6000000000, 816041.6000000000, 950252.4000000000, 1430785.0000000000, 1876003.3999999999};

// --------------- VEC 2 : -march=native-------------- 

VTime_standard = 
 {4523.4000000000, 8993.0000000000, 13426.8000000000, 18068.8000000000, 22483.8000000000, 26890.6000000000, 35645.6000000000, 44965.2000000000, 67806.2000000000, 90928.8000000000, 180195.0000000000, 271639.8000000000, 385624.8000000000, 465145.2000000000, 579274.6000000000, 707586.4000000000, 813660.4000000000, 932987.6000000000, 1408793.8000000000, 1894171.2000000000};





    // int i = 0;
    // vector<double>::iterator k;
    // for (k = VSize.begin(); k != VSize.end(); k++){  
    //     double qtt,MaxT;
    //     qtt = *k * 2 * 8 /1000000;
    //     MaxT = 19000;
    //     MaxTime[i] = MaxT;
    //     i +=1;
       
    // }

    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_standard[0];
    T2[1] = Time_standard[sz_time -1];
    plt::loglog(T1,T2,"white");



    plt::plot(VSize,Time_standard,{{"color", "b"},{"label", "Without flags"}});

    plt::plot(VSize,OVTime_standard,{{"color", "g"},{"label", "-O3 -march=native"}});

    plt::plot(VSize,OTime_standard,{{"color", "y"},{"label", "-O3"}});

    plt::plot(VSize,VTime_standard,{{"color", "r"},{"label", "-march=native"}});

    // plt::plot(VSize,MaxTime,{{"color", "#FF00CD"},{"label", "Max Flow"}});    

    
    

    plt::title("Flow according to size");
    plt::xlabel("Size of vector");
    plt::ylabel("Flow (Mbytes/s)");


    plt::legend();    
    plt::show();
    return 0;
}