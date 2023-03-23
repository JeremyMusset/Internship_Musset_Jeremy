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

    class std::vector<double> Time_seq(sz_time);

    class std::vector<double> Time_cuda_par(sz_time);

    class std::vector<double> Time_cuda_seq(sz_time);

    class std::vector<double> MaxTime(sz_time);


     VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
    
//-------------- NO   -------------

Time_standard = 
 {13185.8000000000, 27498.6000000000, 39707.8000000000, 59604.8000000000, 67078.4000000000, 81660.8000000000, 109320.2000000000, 133244.2000000000, 202861.0000000000, 277318.8000000000, 616337.4000000000, 925949.0000000000, 1304086.3999999999, 1611024.0000000000, 2037664.2000000000, 2461358.2000000002, 2829219.7999999998, 3305557.0000000000, 4951809.7999999998, 6601284.4000000004};
//-------------- VEC : -O3   -------------

Time0_standard = 
 {7465.6000000000, 14713.6000000000, 22531.0000000000, 30368.2000000000, 37429.2000000000, 44258.0000000000, 59118.2000000000, 73525.6000000000, 110947.4000000000, 149237.8000000000, 298031.4000000000, 468139.4000000000, 592742.2000000000, 751175.2000000000, 942995.4000000000, 1159527.6000000001, 1306967.8000000000, 1525927.6000000001, 2285602.0000000000, 3046089.7999999998};
 // -------------- VEC  1 : -O3 -march=native------------- 

Time1_standard = 
 {4586.6000000000, 8959.0000000000, 13743.4000000000, 18241.0000000000, 22378.2000000000, 26859.2000000000, 36819.8000000000, 45248.6000000000, 68301.8000000000, 89629.2000000000, 179046.8000000000, 270538.4000000000, 381033.2000000000, 487800.4000000000, 590992.8000000000, 728146.8000000000, 849018.8000000000, 965977.0000000000, 1465540.0000000000, 1961284.8000000000};
 // --------------- VEC 2 : -O3 -mavx512f-------------- 

Time2_standard = 
 {5340.2000000000, 10551.4000000000, 16041.4000000000, 21233.0000000000, 26740.2000000000, 31785.2000000000, 42859.4000000000, 53831.8000000000, 79074.6000000000, 105933.6000000000, 214110.0000000000, 316823.2000000000, 427058.0000000000, 542973.4000000000, 684872.2000000000, 830265.2000000000, 970196.8000000000, 1126400.6000000001, 1680848.8000000000, 2253730.7999999998};
 // -------------- VEC  1 : -O3 -march=native -funsafe-math-optimizations------------- 

Time3_standard = 
 {1167.0000000000, 2334.8000000000, 3511.8000000000, 4485.4000000000, 5705.6000000000, 6752.4000000000, 9265.2000000000, 11454.8000000000, 16991.8000000000, 24422.4000000000, 56595.4000000000, 86328.4000000000, 141555.2000000000, 238308.6000000000, 281549.0000000000, 366597.0000000000, 419084.2000000000, 546038.6000000000, 940695.4000000000, 1272715.0000000000};
 // --------------- VEC 4 : -O3 -mavx512f -funsafe-math-optimizations -------------- 

Time4_standard = 
 {794.2000000000, 1561.2000000000, 2773.0000000000, 3217.6000000000, 4351.4000000000, 5272.4000000000, 6971.0000000000, 8685.8000000000, 13700.8000000000, 23657.2000000000, 54165.6000000000, 81580.8000000000, 111176.2000000000, 146022.8000000000, 241208.0000000000, 334360.6000000000, 422395.2000000000, 532059.8000000000, 1032701.2000000000, 1447756.0000000000};
 // -------------- VEC  5 : -O3 -march=native -funsafe-math-optimizations------------- 

Time5_standard = 
 {13245.6000000000, 26235.2000000000, 40067.8000000000, 52690.0000000000, 66494.6000000000, 81576.8000000000, 104383.6000000000, 131074.4000000000, 196958.0000000000, 265310.2000000000, 597244.8000000000, 911612.0000000000, 1238390.0000000000, 1550982.8000000000, 1901063.8000000000, 2342778.6000000001, 2778421.6000000001, 3211116.7999999998, 4793122.4000000004, 6312094.0000000000};
 // --------------- VEC 6 : -O3 -mavx512f -funsafe-math-optimizations -ffast-math-------------- 

Time6_standard = 
 {787.0000000000, 1561.8000000000, 2728.2000000000, 3302.8000000000, 4393.6000000000, 5316.2000000000, 7180.0000000000, 8932.8000000000, 13316.4000000000, 23715.4000000000, 56150.0000000000, 81459.4000000000, 116806.8000000000, 148141.6000000000, 219586.0000000000, 295495.2000000000, 458856.0000000000, 560813.2000000000, 931083.6000000000, 1247226.2000000000};



// Cuda 


 Time_cuda_par = { 16683.299999999999272,  15894.500000000000000,  16581.400000000001455,  17966.200000000000728,  19264.799999999999272,  20743.799999999999272,  23031.099999999998545,  25281.500000000000000,  32449.400000000001455,  39267.000000000000000,  70529.199999999997090,  103351.500000000000000,  133395.700000000011642,  163409.600000000005821,  200517.799999999988358,  238795.399999999994179,  275130.500000000000000,  313059.700000000011642,  465148.599999999976717,  614005.099999999976717 }; 


 Time_cuda_seq = { 526114.500000000000000,  780323.500000000000000,  1120162.300000000046566,  1491878.899999999906868,  1862401.000000000000000,  2232406.600000000093132,  2974200.200000000186265,  3716314.399999999906868,  5568628.599999999627471,  7420778.200000000186265,  16759557.599999999627471,  26947819.500000000000000,  35932934.600000001490116,  44918198.899999998509884,  56456820.000000000000000,  68041020.400000005960464,  79351909.200000002980232,  90657969.400000005960464,  135433686.099999994039536,  182189134.099999994039536 }; 

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
    plt::loglog(T1,T2,"w");



    plt::plot(VSize,Time_standard,{{"color", "b"},{"label", "Without flags"}});

    plt::plot(VSize,Time0_standard,{{"color", "g"},{"label", "-O3"}});

    plt::plot(VSize,Time1_standard,{{"color", "y"},{"label", "-O3 -march=native"}});

    plt::plot(VSize,Time2_standard,{{"color", "r"},{"label", "-O3 -mavx512f"}});

    plt::plot(VSize,Time3_standard,{{"label", "-O3 -march=native -funsafe-math-optimizations"}});

    plt::plot(VSize,Time4_standard,{{"label", "-O3 -mavx512f -funsafe-math-optimizations"}});

    //  plt::plot(VSize,Time5_standard,{{"label", ""}});

    // plt::plot(VSize,Time6_standard,{{"label", "-Ofast -march=native -funsafe-math-optimizations -ffast-math "}});

    // plt::plot(VSize,MaxTime,{{"color", "#FF00CD"},{"label", "Max Flow"}});    

    // plt::plot(VSize,Time_seq,{{"label", "CPU Sequential"}});

    // plt::plot(VSize,Time_cuda_par,{{"label", "Cuda Parallel"}});

    // plt::plot(VSize,Time_cuda_seq,{{"label", "Cuda Sequential"}});
    

    // plt::title("Time of execution according to size");
    plt::xlabel("Size of vector");
    plt::ylabel("Time (in ns)");


    plt::legend();    
    plt::show();
    return 0;
}