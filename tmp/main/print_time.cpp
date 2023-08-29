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
    
    int sz_timeo = 14;
    class std::vector<double> VSizeo(sz_timeo);
    class std::vector<double> Time_standardo(sz_timeo);
    class std::vector<double> Time_par_standardo(sz_timeo);
    class std::vector<double> Time_ozakio(sz_timeo);
    class std::vector<double> Time_par_ozakio(sz_timeo);
    class std::vector<double> Time_diffo(sz_timeo);
    class std::vector<double> Time_par_diffo(sz_timeo);

    VSizeo = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,325000,500000,750000};

Time_standardo = 
 {13107.0000000000,26004,38970,52016,65026,78023,104008,130587,196062,262024,524866,928009, 1466778, 2317705,3169191      };

Time_par_standardo = 
 {628.0000000000,10840,15281,20051,24967,29796,39378,49151,73400,98131,196258, 344368, 528422 , 769367, 1079566           };

Time_ozakio = 
 {78906551.0000000000,161694409,242583347,320978229,403792807,478759391,649019653,811326635,1219369263,1629454826,5092813926,8212166151,12608913840, 19124860500, 25953397709          };

Time_par_ozakio = 
 {1711504.0000000000,2651457,3844379,4934443,5920222,7357010,9322218,11779651,17671512,23788321,47722331, 77655624, 118694789, 118216194, 170546402,240484883      };
  


  for (unsigned int i=0;i<sz_timeo;i++) {
        Time_diffo[i] =  Time_ozakio[i] / Time_standardo[i];
        Time_par_diffo[i] =  Time_par_ozakio[i] / Time_par_standardo[i];
    }



    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSizeo[0];
    T1[1] = VSizeo[sz_timeo - 1];
    T2[0] = Time_diffo[0];
    T2[1] = Time_diffo[sz_timeo -1];
    T2[0] = Time_standardo[0];
    T2[1] = Time_standardo[sz_timeo -1];
    // T2[0] = 0;
    // T2[1] = 1000;
    plt::loglog(T1,T2,"w");



    // plt::plot(VSizeo,Time,{{"color", "b"},{"label", "Serial standard dot product"}});
    // plt::plot(VSizeo,Time,{{"color", "b"},{"label", "Parallel standard dot product"}});
    // plt::plot(VSizeo,Time_diffo,{{"color", "g"},{"label", "Serial OzBLAS"}});
    // plt::plot(VSizeo,Time_par_diffo,{{"color", "g"},{"label", "Parallel OzBLAS"}});
    // plt::ylabel("Time (in Cycles) / Standard");



    plt::plot(VSizeo,Time_standardo,{{"color", "b"},{"label", "Standard dot product"}});
    // plt::plot(VSizeo,Time_rare_blas,{{"color", "r"},{"label", "Rare BLAS"}});
    plt::plot(VSizeo,Time_ozakio,{{"color", "g"},{"label", "OzBLAS"}});
    plt::ylabel("Time (in ns)");



    // plt::plot(VSizeo,Time_par_standardo,{{"color", "b"},{"label", "Standard dot product"}});
    // plt::plot(VSizeo,Time_par_rare_blas,{{"color", "r"},{"label", "Rare BLAS"}});
    // plt::plot(VSizeo,Time_par_ozakio,{{"color", "g"},{"label", "OzBLAS"}});
    // plt::ylabel("Time (in ns)");




    // plt::title("Time of differents dot products according to size");
    // plt::title("Throughput of differents dot product according to size");
    plt::xlabel("Size of vector");
    // plt::ylabel("Throughput (in KBytes/s)");
    // plt::ylabel("Time (in ns)");


    plt::legend();    
    plt::show();


    return 0;
}