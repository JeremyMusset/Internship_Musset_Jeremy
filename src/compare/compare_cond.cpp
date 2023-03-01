#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen = 40;
    double sum = 200;
    int size = 1000;


    int sz_err = 20;
    class std::vector<double> VCond(sz_err);
    VCond = {1, 5, 10, 50, 100, 500, 1000, 5000, 10000,50000, 100000, 500000, 1000000, 5000000, 10000000, 50000000, 100000000, 500000000, 100000000, 5000000000} ; 

    class std::vector<double> Error_standard(sz_err*nb_gen);
    class std::vector<double> Error_common(sz_err*nb_gen);
    class std::vector<double> Error_mkl(sz_err*nb_gen);
    class std::vector<double> Error_blaspp(sz_err*nb_gen);

    // Real conditioning
    class std::vector<double> RCond(nb_gen * sz_err);

    

    int alpha;
    int i = 0;
    vector<double>::iterator k;
    for (k = VCond.begin(); k != VCond.end(); k++){
        printf("\n __________________________________________ COND = %f __________________________________________\n",*k);
        // Exec dot prod
        vec_gen_cond(nb_gen,size,*k,sum,1,RCond,i);
        compare_dot_prod_cond(size, *k, nb_gen,sum,Error_standard,Error_common,Error_mkl,Error_blaspp,1,i);    
        i += 1;
    }

    // Sort the results 
    double temp;
    for (int i = 0; i < nb_gen*sz_err - 1; i++) {
        for (int j = 0; j < nb_gen*sz_err - i - 1; j++) {
            if (RCond[j] > RCond[j + 1]) {
                // SCond
                temp = RCond[j];
                RCond[j] = RCond[j + 1];
                RCond[j + 1] = temp;

                // Errors
                temp = Error_standard[j];
                Error_standard[j] = Error_standard[j + 1];
                Error_standard[j + 1] = temp;

                temp = Error_common[j];
                Error_common[j] = Error_common[j + 1];
                Error_common[j + 1] = temp;

                temp = Error_mkl[j];
                Error_mkl[j] = Error_mkl[j + 1];
                Error_mkl[j + 1] = temp;

                temp = Error_blaspp[j];
                Error_blaspp[j] = Error_blaspp[j + 1];
                Error_blaspp[j + 1] = temp;
            }
        }
    }

    // Cond Stats 
    double moyenne_cond = 0;
    double prem_quart_cond;
    double trois_quart_cond;
    double medianne_cond;

    for (unsigned int i=0; i<nb_gen * sz_err;i++){
        moyenne_cond += RCond[i];
    }
    moyenne_cond /= nb_gen * sz_err;

    prem_quart_cond = RCond[(nb_gen * sz_err) / 4];
    trois_quart_cond = RCond[3*(nb_gen * sz_err) / 4];
    medianne_cond = RCond[(nb_gen * sz_err) / 2];

    // Error Stats 
    double moyenne_err = 0;
    double prem_quart_err;
    double trois_quart_err;
    double medianne_err;

    for (unsigned int i=0; i<nb_gen * sz_err;i++){
        moyenne_err += Error_standard[i];
    }
    moyenne_err /= nb_gen * sz_err;

    prem_quart_err = Error_standard[(nb_gen * sz_err) / 4];
    trois_quart_err = Error_standard[3*(nb_gen * sz_err) / 4];
    medianne_err = Error_standard[(nb_gen * sz_err) / 2];

    printf("\n\n########################## Conditionning ##########################  \n\n");

    printf("Average conditioning : %.30f<_n",moyenne_cond);
    printf("First quartile conditioning : %.30f\n",prem_quart_cond);
    printf("Medianne conditioning : %.30f\n",medianne_cond);
    printf("Third quartile conditioning : %.30f\n",trois_quart_cond);

    printf("\n\n########################## Error ##########################  \n\n");

    printf("Average error : %.30f\n",moyenne_err);
    printf("First quartile error : %.30f\n",prem_quart_err);
    printf("Medianne error : %.30f\n",medianne_err);
    printf("Third quartile error : %.30f\n",trois_quart_err);


    for (int i=0; i<sz_err*nb_gen;i++){
        printf("RCond[%d] = %.30f\n",i,RCond[i]);
        printf("Error_standard[%d] = %.30f\n",i,Error_standard[i]);

    }


    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = RCond[0];
    T1[1] = RCond[sz_err*nb_gen - 1];
    T2[0] = Error_standard[0];
    T2[1] = Error_standard[sz_err -1];
    plt::loglog(T1,T2,"white");

    // Stats
    class std::vector<double> quartile_cond(3);
    class std::vector<double> quartile_err(3);
    quartile_cond = {prem_quart_cond, medianne_cond, trois_quart_cond};
    quartile_err = {prem_quart_err, medianne_err, trois_quart_err};

    class std::vector<double> moy_cond(1);
    class std::vector<double> moy_err(1);
    moy_cond = {moyenne_cond};
    moy_err = {moyenne_err};


    // Fct
    class std::vector<double> x(sz_err);
    class std::vector<double> y(sz_err);
    x = {1000, 10000000000000};
    y = {0.0000000000000005, 0.000005};


    plt::scatter(RCond, Error_standard,4,{{"color", "#6BB0D8"}});
    plt::scatter(quartile_cond, quartile_err,10,{{"color", "r"},{"label", "Quartile"}});
    plt::scatter(moy_cond, moy_err,10,{{"color", "b"},{"label", "Average"}});
    plt::plot(x,y,{{"color", "g"},{"label", "y = 5e^-19 * x "}});


    plt::title("Relative error according to conditioning");
    plt::xlabel("Conditioning");
    plt::ylabel("Relative error");

    plt::legend();
    plt::show();

    return 0;
}