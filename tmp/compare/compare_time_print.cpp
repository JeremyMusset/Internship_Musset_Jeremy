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

    class std::vector<double> Time0_standard(sz_time);

     class std::vector<double> Time1_standard(sz_time);

    class std::vector<double> Time2_standard(sz_time);

     class std::vector<double> Time3_standard(sz_time);

    class std::vector<double> Time4_standard(sz_time);

    class std::vector<double> Time5_standard(sz_time);

    class std::vector<double> Time6_standard(sz_time);

    class std::vector<double> MaxTime(sz_time);


     VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
    
//-------------- NO   -------------

Time_standard = 
 {13239.6000000000, 26482.6000000000, 42218.4000000000, 55013.2000000000, 67073.0000000000, 79084.6000000000, 104374.8000000000, 133584.2000000000, 207468.0000000000, 271301.2000000000, 588993.0000000000, 954981.0000000000, 1271634.0000000000, 1583717.8000000000, 1995261.8000000000, 2452452.2000000002, 2749698.7999999998, 3167869.2000000002, 4732009.7999999998, 6308933.0000000000};
//-------------- VEC : -O3   -------------

Time0_standard = 
 {7283.8000000000, 14493.8000000000, 21742.4000000000, 29175.0000000000, 36204.4000000000, 43477.4000000000, 57960.4000000000, 72787.4000000000, 108752.6000000000, 145577.8000000000, 290100.8000000000, 442493.0000000000, 596730.4000000000, 746574.8000000000, 931800.8000000000, 1116492.6000000001, 1285372.2000000000, 1491217.3999999999, 2245315.3999999999, 2982101.2000000002};
 // -------------- VEC  1 : -O3 -march=native------------- 

Time1_standard = 
 {4463.4000000000, 8912.2000000000, 13360.0000000000, 17821.0000000000, 22277.8000000000, 26738.6000000000, 35647.6000000000, 44547.8000000000, 66844.8000000000, 89470.8000000000, 178564.2000000000, 275882.2000000000, 372530.6000000000, 465530.2000000000, 582072.2000000000, 694085.6000000000, 809272.8000000000, 927901.0000000000, 1404340.8000000000, 1868662.0000000000};
 // --------------- VEC 2 : -march=native -------------- 

Time2_standard = 
 {13204.6000000000, 26021.0000000000, 39401.0000000000, 54138.2000000000, 65330.8000000000, 77986.6000000000, 104019.4000000000, 130510.8000000000, 196467.8000000000, 263083.6000000000, 581647.6000000000, 927250.2000000000, 1263739.3999999999, 1578089.0000000000, 2004963.3999999999, 2360873.7999999998, 2768547.2000000002, 3161646.2000000002, 4711219.5999999996, 6246863.5999999996};
 // -------------- VEC  1 : -O3 -march=native -funsafe-math-optimizations -ffast-math------------- 

Time3_standard = 
 {1139.8000000000, 2243.0000000000, 3385.8000000000, 4468.4000000000, 5581.8000000000, 6691.6000000000, 8918.0000000000, 11253.8000000000, 16731.8000000000, 23254.2000000000, 52454.0000000000, 79103.8000000000, 115059.0000000000, 147392.6000000000, 201930.2000000000, 271886.2000000000, 343688.6000000000, 419349.2000000000, 785145.8000000000, 1071210.3999999999};
 // --------------- VEC 4 : -O3 -march=native -funsafe-math-optimizations-------------- 

Time4_standard = 
 {1128.4000000000, 2240.8000000000, 3355.4000000000, 4469.8000000000, 5580.8000000000, 6691.0000000000, 8914.8000000000, 11142.0000000000, 16790.4000000000, 23355.0000000000, 52493.6000000000, 77769.8000000000, 111801.4000000000, 151222.2000000000, 200889.4000000000, 259663.0000000000, 344645.0000000000, 426313.8000000000, 791765.8000000000, 1071929.6000000001};
 // -------------- VEC  5 : -ffast-math------------- 

Time5_standard = 
 {13013.0000000000, 26006.8000000000, 39179.8000000000, 51968.8000000000, 65932.0000000000, 77970.0000000000, 104000.8000000000, 129953.6000000000, 195808.2000000000, 263893.8000000000, 587644.8000000000, 938938.0000000000, 1212748.6000000001, 1540467.3999999999, 1879159.3999999999, 2368982.3999999999, 2760120.3999999999, 3163583.6000000001, 4714721.0000000000, 6311399.7999999998};
 // --------------- VEC 6 : -Ofast -march=native -funsafe-math-optimizations -ffast-math-------------- 

Time6_standard = 
 {1131.2000000000, 2277.6000000000, 3354.6000000000, 4469.0000000000, 5579.6000000000, 6689.6000000000, 8915.6000000000, 11139.8000000000, 16737.4000000000, 23721.0000000000, 55636.4000000000, 83541.6000000000, 119142.2000000000, 152005.6000000000, 209496.6000000000, 268959.2000000000, 351555.6000000000, 450533.8000000000, 799122.8000000000, 1079002.0000000000};





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

    plt::plot(VSize,Time0_standard,{{"color", "g"},{"label", "-O3"}});

    plt::plot(VSize,Time1_standard,{{"color", "y"},{"label", "-O3 -march=native"}});

    // plt::plot(VSize,Time2_standard,{{"color", "r"},{"label", "-march=native"}});

    plt::plot(VSize,Time3_standard,{{"label", "-O3 -march=native -funsafe-math-optimizations -ffast-math"}});

    plt::plot(VSize,Time4_standard,{{"label", "-O3 -march=native -funsafe-math-optimizations"}});

    //  plt::plot(VSize,Time5_standard,{{"label", "-ffast-math"}});

    // plt::plot(VSize,Time6_standard,{{"label", "-Ofast -march=native -funsafe-math-optimizations -ffast-math "}});

    // plt::plot(VSize,MaxTime,{{"color", "#FF00CD"},{"label", "Max Flow"}});    

    
    

    // plt::title("Time of execution according to size");
    plt::xlabel("Size of vector");
    plt::ylabel("Time (in s)");


    plt::legend();    
    plt::show();
    return 0;
}