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
    
    int sz_time = 20;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_rare_blas(sz_time);
    class std::vector<double> Time_par_rare_blas(sz_time);
    class std::vector<double> Time_diff(sz_time);
    class std::vector<double> Time_par_diff(sz_time);
    class std::vector<double> Time_rare_blas_th(sz_time);
    class std::vector<double> Time_par_rare_blas_th(sz_time);
    class std::vector<double> Time_mkl_th(sz_time);

    VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};

   Time_standard = 
 {13062.2000000000, 27192.2000000000, 38980.2000000000, 51973.8000000000, 64973.2000000000, 77943.6000000000, 103922.2000000000, 129969.4000000000, 196419.4000000000, 261559.2000000000, 617259.8000000000, 937161.4000000000, 1259917.8000000000, 1564353.8000000000, 1961680.6000000001, 2347543.7999999998, 2725742.2000000002, 3152566.6000000001, 4699444.7999999998, 6319547.5999999996};

Time_rare_blas = 
 {1000896.4000000000, 1374356.3999999999, 1751272.0000000000, 2128601.0000000000, 2504788.2000000002, 2888857.3999999999, 3683624.0000000000, 4531002.0000000000, 6801709.5999999996, 9064194.4000000004, 18225069.8000000007, 27288201.8000000007, 36422512.2000000030, 45568739.6000000015, 56515837.2000000030, 68068191.4000000060, 79012151.7999999970, 90058837.0000000000, 134864688.4000000060, 179631619.1999999881};
    
Time_par_standard = 
 {6224.4000000000,11028.2000000000,15501.0000000000,20970.6000000000,26946.6000000000,30615.000000000,42718.2000000000,50332.2000000000,77909.4000000000,101092.0000000000, 209302.2000000000, 302968.4000000000,420301.2000000000,516522.8000000000,663074.6000000000,791363.2000000000,910990.6000000000,1052603.6000000001,1574734.0000000000,2149401.3999999999};

Time_par_rare_blas = 
 {1449991.3999999999,1465281.2000000000,1502178.8000000000,1541337.3999999999,1585968.6000000001,1607541.2000000000,1668082.3999999999,1768235.0000000000,1859018.2000000000,2117828.7999999998,3296039.3999999999,4460972.0000000000,5394422.0000000000,6697251.4000000004, 8075775.2000000002,9348855.4000000004,10706691.1999999993,12485251.5999999996,18001652.6000000015,22554846.8000000007};
    for (unsigned int i=0;i<sz_time;i++) {
        Time_diff[i] = Time_rare_blas[i] / Time_standard[i];
        Time_par_diff[i] = Time_par_rare_blas[i] / Time_par_standard[i];
        printf(" %.20f\n",Time_par_diff[i]);
    }

    double qtt;
    for (int j=0;j<sz_time ; j++) {
            qtt = VSize[j] * 2 * 8 ;
            Time_rare_blas_th[j] = qtt / Time_rare_blas[j] * 1000 ;
            Time_par_rare_blas_th[j] = qtt / Time_par_rare_blas[j] * 1000 ;
        }
    
    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_par_standard[0];
    T2[1] = Time_par_standard[sz_time -1];
    T2[0] = 0;
    T2[1] = 3000;
    plt::semilogx(T1,T2,"w");

    // Cache
    std::vector<double> cachesL1 = {18000, 18000};
    std::vector<double> cachesL2 = {468750, 468750};
    std::vector<double> cachesL3 = {750000, 750000};
    double height = 240;
    std::vector<double> heights = {0,height};

    // Tracé des lignes verticales
    // plt::plot(cachesL1,heights,{{"linestyle","--"},{"label", "L1d Cache"}});
    // plt::plot(cachesL2,heights,{{"linestyle","--"},{"label", "L2 Cache"}});
    // plt::plot(cachesL3,heights,{{"linestyle","--"},{"label", "L3 Cache"}});

    // plt::plot(VSize,Time_standard,{{"color", "b"},{"label", "Standard dot product"}});
    // plt::plot(VSize,Time_rare_blas,{{"color", "r"},{"label", "Rare Blas"}});
    // plt::plot(VSize,Time_diff,{{"color", "r"},{"label", "Rare Blas"}});

    // plt::plot(VSize,Time_par_standard,{{"color", "b"},{"label", "Standard dot product"}});
    // plt::plot(VSize,Time_par_rare_blas,{{"color", "r"},{"label", "Rare Blas"}});
    // plt::plot(VSize,Time_par_diff,{{"color", "r"},{"label", "Rare Blas"}});


    // plt::plot(VSize,Time_rare_blas_th,{{"color", "b"},{"label", "Seqeuntiel Rare Blas"}});
    plt::plot(VSize,Time_par_rare_blas_th,{{"color", "r"},{"label", "Rare Blas"}});

    // plt::title("Time of differents dot products according to size");
    plt::title("Throughput rare blas dot product according to size");
    plt::xlabel("Size of vector");
    plt::ylabel("Throughput (in KBytes/s)");
    // plt::ylabel("Time (in ns)");


    plt::legend();    
    plt::show();


    return 0;
}