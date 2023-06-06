#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    int nb_gen = 30;
    double sum = 200;
    int size = 1000;


    int sz_err = 25;
    class std::vector<double> VCond(sz_err);
    VCond = {1, 5, 10, 50, 100, 500, 1000, 5000, 10000,50000, 100000, 500000, 1000000, 5000000, 10000000,50000000, 100000000,500000000, 1000000000,5000000000, 10000000000,50000000000, 100000000000,500000000000, 1000000000000} ; 

    class std::vector<double> Error_standard(sz_err*nb_gen);
    class std::vector<double> Error_common(sz_err*nb_gen);
    class std::vector<double> Error_par_standard(sz_err*nb_gen);
    class std::vector<double> Error_par_common(sz_err*nb_gen);
    class std::vector<double> Error_mkl(sz_err*nb_gen);
    class std::vector<double> Error_blaspp(sz_err*nb_gen);
    class std::vector<double> tmp(sz_err*nb_gen);

    // Real conditioning
    class std::vector<double> RCond(nb_gen * sz_err);

    
    int nb_threads = 8;
    int alpha;
    int i = 0;
    vector<double>::iterator k;
    for (k = VCond.begin(); k != VCond.end(); k++){
        printf("\n __________________________________________ COND = %f __________________________________________\n",*k);
        // Exec dot prod
        vec_gen_cond(nb_gen,size,*k,sum,1,RCond,i);
        compare_dot_prod_cond(size, *k, nb_gen,sum,Error_standard,Error_common,Error_par_standard,Error_par_common,Error_mkl,Error_blaspp,1,i,nb_threads); 

        
        compare_dot_prod_cond_fma(size, *k, nb_gen,sum,Error_par_standard,Error_common,tmp,Error_par_common,Error_mkl,Error_blaspp,1,i,nb_threads);   
        i += 1;
        printf("Err sequential standard dot prod : %.30f \n",Error_standard[i*nb_gen-1]);
        printf("Err sequential common dot prod   : %.30f \n",Error_common[i*nb_gen-1]);
        printf("Err sequential MKL               : %.30f\n",Error_mkl[i*nb_gen-1]);
        printf("Err sequential BLASPP            : %.30f\n\n",Error_blaspp[i*nb_gen-1]);
        printf("Err parallel standard dot prod   : %.30f \n",Error_par_standard[i*nb_gen-1]);
        printf("Err parallel common dot prod     : %.30f \n",Error_par_common[i*nb_gen-1]);
        
       
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

                 temp = Error_par_standard[j];
                Error_par_standard[j] = Error_par_standard[j + 1];
                Error_par_standard[j + 1] = temp;

                temp = Error_par_common[j];
                Error_par_common[j] = Error_par_common[j + 1];
                Error_par_common[j + 1] = temp;
            }
        }
    }


    // Quartile sort 
    class std::vector<double> QError_standard(sz_err*nb_gen);
    class std::vector<double> QError_par_standard(sz_err*nb_gen);

    for (int i = 0; i < nb_gen*sz_err; i++) {
        QError_standard[i] = Error_standard[i];
        QError_standard[i] = Error_standard[i];
    }

    for (int i = 0; i < nb_gen*sz_err - 1; i++) {
        for (int j = 0; j < nb_gen*sz_err - i - 1; j++) {
            if (QError_standard[j] > QError_standard[j + 1]) {
                // Errors
                temp = QError_standard[j];
                QError_standard[j] = QError_standard[j + 1];
                QError_standard[j + 1] = temp;
            }
            if (QError_par_standard[j] > QError_par_standard[j + 1]) {
                temp = QError_standard[j];
                QError_par_standard[j] = QError_par_standard[j + 1];
                Error_standard[j + 1] = temp;
             
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
    moyenne_err /= (nb_gen * sz_err);

    prem_quart_err = QError_standard[(nb_gen * sz_err) / 4];
    trois_quart_err = QError_standard[3*(nb_gen * sz_err) / 4];
    medianne_err = QError_standard[(nb_gen * sz_err) / 2];
    


    // Err Stats PAR
    double par_standard_moyenne = 0;
    double par_standard_prem_quart;
    double par_standard_trois_quart;
    double par_standard_medianne;
    double par_common_moyenne = 0;
    double par_common_prem_quart;
    double par_common_trois_quart;
    double par_common_medianne;


    for (unsigned int i=0; i<nb_gen * sz_err;i++){
        par_standard_moyenne += Error_par_standard[i];
        par_common_moyenne += Error_par_common[i];
    }
    par_standard_moyenne /= (nb_gen * sz_err);
    par_common_moyenne /= nb_gen * sz_err;

    par_standard_prem_quart = QError_par_standard[(nb_gen * sz_err) / 4];
    par_standard_trois_quart = QError_par_standard[3*(nb_gen * sz_err) / 4];
    par_standard_medianne = QError_par_standard[(nb_gen * sz_err) / 2];
    par_common_prem_quart = Error_par_common[(nb_gen * sz_err) / 4];
    par_common_trois_quart = Error_par_common[3*(nb_gen * sz_err) / 4];
    par_common_medianne = Error_par_common[(nb_gen * sz_err) / 2];




    printf("\n\n########################## Conditionning ##########################  \n\n");

    printf("Average conditioning : %.30f<_n",moyenne_cond);
    printf("First quartile conditioning : %.30f\n",prem_quart_cond);
    printf("Medianne conditioning : %.30f\n",medianne_cond);
    printf("Third quartile conditioning : %.30f\n",trois_quart_cond);

    printf("\n\n########################## Error ##########################  \n\n");

    printf("Average error : %.30f\n",moyenne_err);
    printf("Average par error : %.30f\n",par_standard_moyenne);
    printf("First quartile error : %.30f\n",prem_quart_err);
    printf("Medianne error : %.30f\n",medianne_err);
    printf("Third quartile error : %.30f\n",trois_quart_err);



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


    // Stats par
    std::vector<double> par_standard_quartile(3);
    class std::vector<double> par_common_quartile(3);
    class std::vector<double> par_standard_moy(1);
    class std::vector<double> par_common_moy(1);
    par_standard_moy = {par_standard_moyenne};
    par_standard_moy = {par_common_moyenne};
    par_standard_quartile = {par_standard_prem_quart, par_standard_medianne, par_standard_trois_quart};
    par_common_quartile = {par_common_prem_quart, par_common_medianne, par_common_trois_quart};
    

    // // Fct
    class std::vector<double> x(sz_err);
    class std::vector<double> y(sz_err);
    x = {1000, 1000000000000000};
    y = {0.0000000000000005, 0.0005};

    // Scatter
    plt::scatter(RCond, Error_standard,2,{{"label", "Error without fma"},{"color", "#6BB0D8"}});
    plt::scatter(RCond, Error_par_common,2,{{"label", "Error with fma"},{"color", "#F7AF30"}});
    // plt::scatter(RCond, Error_par_standard,6,{{"label", "parallel standard"},{"color", "#0D8A00"}});
    // plt::scatter(RCond, Error_par_common,2,{{"label", "parallel common"},{"color", "#F7AF30"}});

    // Quartile

    plt::scatter(quartile_cond, quartile_err,35,{{"color", "#068100"},{"label", "Quartiles without fma"}});
    plt::scatter(quartile_cond, par_common_quartile,25,{{"color", "#FD2929"},{"label", "Quartile with fma"}});

    // Moyenne
    plt::scatter(moy_cond, moy_err,35,{{"color", "b"},{"label", "Average without fma"}});
    plt::scatter(moy_cond, par_standard_moy,35,{{"color", "#F700FF"},{"label", "Average with fma"}});
    // plt::scatter(moy_cond, moy_err,30,{{"color", "#B9E200"},{"label", "Average Serial"}});
    
    

    // Function
    // plt::plot(x,y,{{"color", "b"},{"label", "y = 5e^-19 * x "}});


    plt::title("Relative error according to conditioning");
    plt::xlabel("Conditioning");
    plt::ylabel("Relative error");

    plt::legend();
    plt::show();

    return 0;
}