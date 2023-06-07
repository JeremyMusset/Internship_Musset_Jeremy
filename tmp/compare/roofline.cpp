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
    long int mem = 51200000000;
    long int flop = 472000000000; 
    int sz = 5;
    int inter = 3;
    class std::vector<double> X(sz);
    X = {0,0.5*(double)flop/mem,(double)flop/mem,2*(double)flop/mem,3*(double)flop/mem};

    class std::vector<double> X1(inter);
    X1 = {0,0.5*(double)flop/mem,(double)flop/mem};

    class std::vector<double> X2(sz-inter+1);
    X2 = {(double)flop/mem, 2*(double)flop/mem,3*(double)flop/mem};
    

    class std::vector<double> PeakPerf1(inter);
    PeakPerf1 = {flop,flop,flop};

    class std::vector<double> PeakPerf2(sz-inter+1);
    PeakPerf2 = {flop,flop,flop};

    class std::vector<double> Diag(inter);
    for (int i=0;i<inter;i++){
        Diag[i] = mem * X1[i];
    }

    double size_standard = 1000000;
    double time_standard = 3183183;
    double Istandard = 0.125;
    double Mstandard = 0.125;
    double Pstandard = Istandard*(size_standard*16*1e9)/time_standard;

    double size_par = 1000000;
    double time_par = 1047381;
    double Ipar= 0.125;
    double Mpar = 0.125;
    double Ppar = Ipar*(size_par*16)/(time_par/1e9);

    class std::vector<double> I1(1);
    class std::vector<double> P1(1);
    class std::vector<double> I2(1);
    class std::vector<double> P2(1);


    I1 = {Istandard};
    P1 = {Pstandard};
    I2 = {Ipar};
    P2 = {Ppar};


    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = X[0];
    T1[1] = X[sz - 1];
    T2[0] = 0;
    T2[1] = 1.5*flop;
    plt::plot(T1,T2,"rgba(255, 255, 255, 0)");


    plt::plot(X1,PeakPerf1,{{"color", "grey"},{"linestyle","--"}});  
    plt::plot(X2,PeakPerf2,{{"color", "r"},{"label","Computing limit"}});  
    plt::plot(X1,Diag,{{"color", "#A900CB"},{"label","Memory limit"}});  

    plt::scatter(I1,P1,50,{{"color", "b"},{"label","Serial"}});
    plt::scatter(I2,P2,50,{{"color", "g"},{"label","Parallel"}});

    plt::title("Roofline Model");
    plt::ylabel("Performance (Floating Point Operations Per Second) ");
    plt::xlabel("Intensity (Floating Point Operations Per Byte)");
    plt::legend();    
    plt::show();
    return 0;
}