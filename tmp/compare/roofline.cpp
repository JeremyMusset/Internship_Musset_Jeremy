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
    int mem = 32200;
    int flop = 472200; 
    int sz = 8;
    int inter = 4;
    class std::vector<double> X(sz);
    X = {0,5,10,(double)flop/mem,20,30,40,50};

    class std::vector<double> X1(inter);
    X1 = {0,5,10,(double)flop/mem};

    class std::vector<double> X2(sz-inter+1);
    X2 = {(double)flop/mem, 20,30,40,50};
    

    class std::vector<double> PeakPerf1(inter);
    PeakPerf1 = {flop,flop,flop,flop};

    class std::vector<double> PeakPerf2(sz-inter+1);
    PeakPerf2 = {flop,flop,flop,flop,flop};

    class std::vector<double> Diag(inter);
    for (int i=0;i<inter;i++){
        Diag[i] = mem * X1[i];
    }


    double Istandard = 0.125;
    double Icommon = 0.125;
    double Mstandard = 0.125;
    double Mcommon = 1;
    double Pstandard = 815.85;
    double Pcommon = 848.25;

    class std::vector<double> I1(1);
    class std::vector<double> P1(1);

    class std::vector<double> I2(1);
    class std::vector<double> P2(1);

    I1 = {Istandard};
    P1 = {Pstandard};
    I2 = {Icommon};
    P2 = {Pcommon};
    


    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = X[0];
    T1[1] = X[sz - 1];
    T2[0] = 0;
    T2[1] = 1.5*flop;
    plt::loglog(T1,T2,"white");


    plt::plot(X1,PeakPerf1,{{"color", "grey"},{"linestyle","--"}});  
    plt::plot(X2,PeakPerf2,{{"color", "r"}});  
    plt::plot(X1,Diag,{{"color", "r"}});  
    plt::scatter(I1,P1,50,{{"color", "b"},{"label","Standard"}});
    plt::scatter(I2,P2,50,{{"color", "g"},{"label","Common"}});

    plt::title("Roofline Model");
    plt::ylabel("Performance (Floating Point Operations Per Second) ");
    plt::xlabel("Intensity");
    plt::legend();    
    plt::show();
    return 0;
}