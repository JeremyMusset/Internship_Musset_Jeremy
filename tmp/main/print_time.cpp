#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "../../include/parallelisation.h"
#include <thread>
#include "matplotlibcpp.h"

namespace plt = matplotlibcpp;
using namespace std;


int main() {
    
    int sz_time = 14;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_rare_blas(sz_time);
    class std::vector<double> Time_par_rare_blas(sz_time);
     class std::vector<double> Time_ozaki(sz_time);
    class std::vector<double> Time_par_ozaki(sz_time);
     class std::vector<double> Time_ozaki_th(sz_time);
    class std::vector<double> Time_par_ozaki_th(sz_time);
    class std::vector<double> Time_diff(sz_time);
    class std::vector<double> Time_par_diff(sz_time);
    class std::vector<double> Time_diff_o(sz_time);
    class std::vector<double> Time_par_diff_o(sz_time);
    class std::vector<double> Time_rare_blas_th(sz_time);
    class std::vector<double> Time_par_rare_blas_th(sz_time);
    class std::vector<double> Time_mkl(sz_time);
    class std::vector<double> Time(sz_time);

    Time = {1,1,1,1,1,1,1,1,1,1,1,1,1,1};

    Time_mkl = {17.8954903364, 17.9420471876, 17.9499644740, 17.9567063809, 17.9540197554, 17.9551346074, 17.8733605381, 17.9533750849, 17.2271780267, 17.1219829996, 17.1411391110, 17.2084804539, 17.2037471727, 17.2215633778, 17.0662564697, 16.9174645542,16.9074645542,16.8574645542,16.8174645542,16.7174645542};
VSize = 
 {5000.0000000000, 10000.0000000000, 15000.0000000000, 20000.0000000000, 25000.0000000000, 30000.0000000000, 40000.0000000000, 50000.0000000000, 75000.0000000000, 100000.0000000000, 200000.0000000000, 300000.0000000000, 400000.0000000000, 500000.0000000000};

Time_standard = 
 {13255.6000000000, 26134.0000000000, 38992.2000000000, 52006.8000000000, 67151.6000000000, 79455.2000000000, 104949.0000000000, 131150.8000000000, 200751.2000000000, 271262.8000000000, 575455.6000000000, 881535.8000000000, 1205599.3999999999, 1512795.2000000000};

Time_par_standard = 
 {5873.4000000000, 10725.4000000000, 15753.8000000000, 20770.0000000000, 26767.6000000000, 30900.6000000000, 42643.6000000000, 49269.0000000000, 77206.6000000000, 102663.4000000000, 206709.4000000000, 302912.8000000000, 417689.6000000000, 526720.8000000000};

Time_rare_blas = 
 {701725.4000000000, 1075153.8000000000, 1449734.3999999999, 1827564.8000000000, 2217679.2000000002, 2615547.6000000001, 3492626.2000000002, 4371653.2000000002, 6651612.4000000004, 8921262.1999999993, 18337406.0000000000, 27674117.3999999985, 36787925.3999999985, 46022218.3999999985};

Time_par_rare_blas = 
 {1363835.3999999999, 1324104.6000000001, 1261157.0000000000, 1385739.3999999999, 1415804.8000000000, 1527889.8000000000, 1443819.8000000000, 1616467.0000000000, 1907077.2000000000, 2088453.6000000001, 3310887.7999999998, 4559387.0000000000, 5376068.5999999996, 7489560.0000000000};

Time_ozaki = 
 {8499844.1999999993, 17248779.6000000015, 25914515.6000000015, 35128600.2000000030, 43997637.0000000000, 52889568.6000000015, 71543255.5999999940, 89570790.2000000030, 133581055.4000000060, 178796699.8000000119, 548223671.7999999523, 824376180.2000000477, 1099051975.5999999046, 1376067525.0000000000};
    
    
    for (unsigned int i=0;i<sz_time;i++) {
        Time_diff[i] = Time_rare_blas[i] / Time_standard[i];
        Time_par_diff[i] = Time_par_rare_blas[i] / Time_par_standard[i];
        Time_diff_o[i] = Time_ozaki[i] / Time_standard[i];
        Time_par_diff_o[i] = Time_par_ozaki[i] / Time_par_standard[i];
        // printf(" %.20f\n",Time_par_diff[i]);
    }

    double qtt;
    for (int j=0;j<sz_time ; j++) {
            qtt = VSize[j] * 2 * 8 ;
            Time_rare_blas_th[j] = qtt / Time_rare_blas[j] * 1000000 ;
            Time_par_rare_blas_th[j] = qtt / Time_par_rare_blas[j] * 1000000 ;
            Time_ozaki_th[j] = qtt / Time_ozaki[j] * 1000000 ;
            Time_par_ozaki_th[j] = qtt / Time_par_ozaki[j] * 1000000 ;
            Time_mkl[j] = qtt / Time_mkl[j];
    }
    
    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_par_standard[0];
    T2[1] = Time_par_standard[sz_time -1];
    // T2[0] = 0;
    // T2[1] = 1000;
    plt::loglog(T1,T2,"w");

    // Cache
    std::vector<double> cachesL1 = {18000, 18000};
    std::vector<double> cachesL2 = {468750, 468750};
    std::vector<double> cachesL3 = {750000, 750000};
    double height = 11000;
    std::vector<double> heights = {0,height};

    // Tracé des lignes verticales
    // plt::plot(cachesL1,heights,{{"linestyle","--"},{"label", "L1d Cache"}});
    // plt::plot(cachesL2,heights,{{"linestyle","--"},{"label", "L2 Cache"}});
    // plt::plot(cachesL3,heights,{{"linestyle","--"},{"label", "L3 Cache"}});

    plt::plot(VSize,Time_standard,{{"color", "b"},{"label", "Standard dot product"}});
    plt::plot(VSize,Time_rare_blas,{{"color", "r"},{"label", "Rare Blas"}});
    plt::plot(VSize,Time_ozaki,{{"color", "g"},{"label", "Ozaki"}});
    // plt::plot(VSize,Time_diff,{{"color", "r"},{"label", "Rare Blas"}});

    // plt::plot(VSize,Time_par_standard,{{"color", "b"},{"label", "Standard dot product"}});
    // plt::plot(VSize,Time_par_rare_blas,{{"color", "r"},{"label", "Rare Blas"}});
    // plt::plot(VSize,Time_par_ozaki,{{"color", "r"},{"label", "Ozaki"}});
    // plt::plot(VSize,Time_diff,{{"color", "r"},{"label", "Serial Rare Blas"}});
    // plt::plot(VSize,Time_par_diff,{{"color", "r"},{"label", "Parallel Rare Blas"}});
    // plt::plot(VSize,Time_diff_o,{{"color", "r"},{"label", "Serial Ozaki"}});
    // plt::plot(VSize,Time_par_diff_o,{{"color", "r"},{"label", "Parallel Ozaki"}});
    // plt::plot(VSize,Time,{{"color", "b"},{"label", "Serial standard dot product"}});


    // plt::plot(VSize,Time_rare_blas_th,{{"color", "b"},{"label", "Sequentiel Rare Blas"}});
    // plt::plot(VSize,Time_par_rare_blas_th,{{"color", "b"},{"label", "Rare Blas"}});
    // plt::plot(VSize,Time_ozaki_th,{{"color", "r"},{"label", "Serial Ozaki"}});
    // plt::plot(VSize,Time_par_ozaki_th,{{"color", "r"},{"label", "Ozaki"}});

    // plt::plot(VSize,Time_mkl,{{"color", "r"},{"label", "Rare Blas"}});

    plt::title("Time of differents dot products according to size");
    // plt::title("Throughput of differents dot product according to size");
    plt::xlabel("Size of vector");
    // plt::ylabel("Throughput (in KBytes/s)");
    // plt::ylabel("Time (in Cycles) / Standard");
    plt::ylabel("Time (in ns)");


    plt::legend();    
    plt::show();


    return 0;
}