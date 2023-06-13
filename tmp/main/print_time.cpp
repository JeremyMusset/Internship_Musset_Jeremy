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

    VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000};

    Time_standard = 
 {13678.4000000000, 27990.8000000000, 44165.2000000000, 54731.0000000000, 68479.2000000000, 79788.0000000000, 115418.2000000000, 138310.4000000000, 207787.2000000000, 269114.2000000000, 609860.8000000000, 885767.6000000000, 1183775.2000000000, 1583130.2000000000};

Time_rare_blas = 
 {1610631.6000000001, 1782973.6000000001, 2057718.2000000000, 2440945.0000000000, 2787601.3999999999, 3211470.6000000001, 4089004.0000000000, 5012117.0000000000, 7143978.4000000004, 9552801.1999999993, 18916115.0000000000, 28361245.6000000015, 37578718.3999999985, 47061577.2000000030};

    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_standard[0];
    T2[1] = Time_standard[sz_time -1];
    plt::loglog(T1,T2,"w");

    plt::plot(VSize,Time_standard,{{"color", "b"},{"label", "Standard"}});
    plt::plot(VSize,Time_rare_blas,{{"color", "r"},{"label", "Rare Blas"}});

    plt::title("Time of different dot product according to size");
    plt::xlabel("Size of vector");
    // plt::ylabel("Throughput (in GBytes/s)");
    plt::ylabel("Time (in ns)");


    plt::legend();    
    plt::show();


    return 0;
}