#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////// FONCTION /////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template
void compare_cond_o<double>(int n, double required_cond, int nb_gen, double sum, std::vector<double> &Error_standard, std::vector<double> &Error_par_standard, std::vector<double> &Error_ozaki, std::vector<double> &Error_par_ozaki, int q, int nb, int nb_threads);


/// @brief give error according to the cond
/// @tparam T 
/// @param n size
/// @param required_cond cond
/// @param nb_gen nb of gen
/// @param sum sum
/// @param Error_standard output
/// @param Error_par_standard output
/// @param Error_ozaki output
/// @param q position of program
/// @param nb position into cond vector
template < class T >
void compare_cond_o(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Error_standard, std::vector<T> &Error_par_standard, std::vector<T> &Error_ozaki, std::vector<T> &Error_par_ozaki, int q, int nb, int nb_threads){

    class std::vector<double> a(n);
    class std::vector<double> b(n);

    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){
    double Err_standard, Err_par_standard, Err_ozaki, Err_par_ozaki;



    //////////////////////////////////////////////////////////////////
    //////////////////////// Data importation ////////////////////////
    //////////////////////////////////////////////////////////////////
      
    class std::vector<double> vec;
    import_vec(vec,l, q); 
   
    // Vectors importation 
    for (unsigned int i=0;i<n;i++){
        a[i] = vec[i+1];
        b[i] = vec[n+1+i]; 
         printf("%.20f \n",a[i]);
    }
    printf("\n\n");
    

    double res_standard ,res_par_standard, res_ozaki,res_par_ozaki;

    //////////////////////////////////////////////////////////////////
    //////////////////////// MPFR_dot product ////////////////////////
    //////////////////////////////////////////////////////////////////
    
    mpfr_t res_mpfr;
    mpfr_t *a_mpfr = new mpfr_t[n];
    mpfr_t *b_mpfr = new mpfr_t[n];
    for (unsigned int i = 0; i < n; i++){
        mpfr_init2(a_mpfr[i], P);
        mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
        mpfr_init2(b_mpfr[i], P);
        mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
    } 
    mpfr_init2(res_mpfr,P);
    mpfr_set_d(res_mpfr,0,MPFR_RNDN);
 
    dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);


    ////////////////////////////////////////////////////////////////////
    /////////////////////// STANDARD DOT PRODUCT ///////////////////////
    ////////////////////////////////////////////////////////////////////

    res_standard = 0;
    for (unsigned int j=0; j<n;j++){
        res_standard += a[j]*b[j];
    }


    ////////////////////////////////////////////////////////////////////
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    res_par_standard = 0.0; 
    #pragma omp parallel for reduction(+:res_par_standard)
    for (unsigned int j=0; j<n;j++){
            res_par_standard += a[j]*b[j];
    }
        


    ////////////////////////////////////////////////////////////////////
    ///////////////////// OZAKI DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_ozaki = 0.0;
    res_ozaki = Ozaki(a,b,n,nb_threads);

    ////////////////////////////////////////////////////////////////////
    ////////////////// PARALLEL OZAKI DOT PRODUCT //////////////////////
    ////////////////////////////////////////////////////////////////////

    res_par_ozaki = 0.0;
    res_par_ozaki = Ozaki_par_e(a,b,n,nb_threads);
    
    double d_correct = mpfr_get_d(res_mpfr, MPFR_RNDN);
    
    // // Print results
    // printf ("\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ RESULT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   \n");
    // printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.50f \n --------------------------------- \n", d_correct);
    // // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // // printf ("\n PARALLEL DOT PRODUCT : \n%.50f \n", res_par_standard);
    // printf ("\n SEQUENTIAL OZAKI : \n%.50f \n", res_ozaki);  
    // printf ("\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ERROR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   \n");
    // // printf ("\n ERROR STANDARD DOT PRODUCT : \n%.50f \n", abs(res_standard - d_correct) );
    // // printf ("\n ERROR PARALLEL DOT PRODUCT : \n%.50f \n", abs(res_par_standard - d_correct));
    // printf ("\n ERROR SEQUENTIAL OZAKI : \n%.50f \n", abs(res_ozaki - d_correct) );  

    // Error

    int indice = nb*nb_gen + l;

    Err_standard = d_correct - res_standard;
    Err_standard = Err_standard/d_correct;
    Err_standard = abs(Err_standard);

    Err_par_standard = d_correct - res_par_standard;
    Err_par_standard = Err_par_standard/d_correct;
    Err_par_standard = abs(Err_par_standard);

    Err_ozaki = d_correct - res_ozaki;
    Err_ozaki = Err_ozaki/d_correct;
    Err_ozaki = abs(Err_ozaki);

    Err_par_ozaki = d_correct - res_par_ozaki;
    Err_par_ozaki = Err_par_ozaki/d_correct;
    Err_par_ozaki = abs(Err_par_ozaki);

    // mpfr_t tmp1,tmp2,restmp;
    // mpfr_init2(tmp1, P);
    // mpfr_set_d(tmp1, d_correct, MPFR_RNDN);
    // mpfr_init2(tmp2, P);
    // mpfr_set_d(tmp2, res_ozaki, MPFR_RNDN);
    // mpfr_sub(restmp,tmp1,tmp2,MPFR_RNDN);
    // mpfr_printf("TEEESSSTTT : %.30Rg \n",restmp);

    printf("\n !!! Vec number %d :\nres   = %.30f\nParallel Ozaki = %.30f\nerr = %.30f \n\n",l,d_correct,res_par_ozaki,Err_par_ozaki);
    
    // Save result
    Error_standard[indice] = Err_standard;
    Error_par_standard[indice] = Err_par_standard;
    Error_ozaki[indice] = Err_ozaki;
    Error_par_ozaki[indice] = Err_par_ozaki;
    }
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////// MAIN ///////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




int main() {
    int nb_gen = 2;
    double sum = 200;
    int size = 4;


    int sz_err = 1;
    class std::vector<double> VCond(sz_err);
    // VCond = {1, 5, 10, 50, 100, 1000, 5000, 10000,50000, 100000, 500000, 1000000, 5000000, 10000000, 100000000,5000000000, 10000000000,50000000000,500000000000, 1000000000000} ; 
    VCond = {10000000000};
    class std::vector<double> Error_standard(sz_err*nb_gen);
    class std::vector<double> Error_par_standard(sz_err*nb_gen);
    class std::vector<double> Error_ozaki(sz_err*nb_gen);
    class std::vector<double> Error_par_ozaki(sz_err*nb_gen);
    class std::vector<double> tmp(sz_err*nb_gen);

    // Real conditioning
    int totsz = nb_gen * sz_err;
    class std::vector<double> RCond(totsz);
    
    int nb_threads = 2;
    int alpha;
    int i = 0;
    vector<double>::iterator k;
    for (k = VCond.begin(); k != VCond.end(); k++){
        printf("\n __________________________________________ COND = %f __________________________________________\n",*k);
        // Exec dot prod
        vec_gen_cond(nb_gen,size,*k,sum,1,RCond,i);
        compare_cond_o(size, *k, nb_gen,sum,Error_standard, Error_par_standard, Error_ozaki,Error_par_ozaki,1,i,nb_threads); 
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

                temp = Error_par_standard[j];
                Error_par_standard[j] = Error_par_standard[j + 1];
                Error_par_standard[j + 1] = temp;

                temp = Error_ozaki[j];
                Error_ozaki[j] = Error_ozaki[j + 1];
                Error_ozaki[j + 1] = temp;

        
            }
        }
    }


    // Quartile sort 
    class std::vector<double> QError_standard(sz_err*nb_gen);
    class std::vector<double> QError_par_standard(sz_err*nb_gen);
    class std::vector<double> QError_ozaki(sz_err*nb_gen);

    for (int i = 0; i < nb_gen*sz_err; i++) {
        QError_standard[i] = Error_standard[i];
        QError_par_standard[i] = Error_par_standard[i];
        QError_ozaki[i] = Error_ozaki[i];
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
                temp = QError_par_standard[j];
                QError_par_standard[j] = QError_par_standard[j + 1];
                Error_par_standard[j + 1] = temp;
            }
            if (QError_ozaki[j] > QError_ozaki[j + 1]) {
                temp = QError_ozaki[j];
                QError_ozaki[j] = QError_ozaki[j + 1];
                Error_ozaki[j + 1] = temp;
            }
        }
    }

    // Cond Stats 
    double moyenne_cond = 0;
    double prem_quart_cond;
    double trois_quart_cond;
    double medianne_cond;

    for (unsigned int i=0; i<totsz;i++){
        moyenne_cond += RCond[i];
    }
    moyenne_cond /= totsz;

    prem_quart_cond = RCond[(totsz) / 4];
    trois_quart_cond = RCond[3*(totsz) / 4];
    medianne_cond = RCond[(totsz) / 2];

    // Error Stats 
    double moyenne_err = 0;
    double prem_quart_err;
    double trois_quart_err;
    double medianne_err;

    for (unsigned int i=0; i<totsz;i++){
        moyenne_err += Error_standard[i];
    }
    moyenne_err /= (totsz);

    prem_quart_err = QError_standard[(totsz) / 4];
    trois_quart_err = QError_standard[3*(totsz) / 4];
    medianne_err = QError_standard[(totsz) / 2];
    


    // Err Stats par standard
    double par_standard_moyenne = 0;
    double par_standard_prem_quart;
    double par_standard_trois_quart;
    double par_standard_medianne;
   


    for (unsigned int i=0; i<totsz;i++){
        par_standard_moyenne += Error_par_standard[i];
    }
    par_standard_moyenne /= (totsz);

    par_standard_prem_quart = QError_par_standard[(totsz) / 4];
    par_standard_trois_quart = QError_par_standard[3*(totsz) / 4];
    par_standard_medianne = QError_par_standard[(totsz) / 2];


    // Err Stats serial ozaki
    double ozaki_moyenne = 0;
    double ozaki_prem_quart;
    double ozaki_trois_quart;
    double ozaki_medianne;
   


    for (unsigned int i=0; i<totsz;i++){
        ozaki_moyenne += Error_ozaki[i];
    }
    ozaki_moyenne /= (totsz);

    ozaki_prem_quart = QError_ozaki[(totsz) / 4];
    ozaki_trois_quart = QError_ozaki[3*(totsz) / 4];
    ozaki_medianne = QError_ozaki[(totsz) / 2];

    int a;
    printf("\n ############################### ERROR ###############################  \n");
    printf("\nError_standard = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.30f",Error_standard[a]);
        }
        else{
            printf("%.30f, ",Error_standard[a]);
        }
    }
    printf("]\n");

    // printf("\nError_par_standard = [");
    // for (a=0; a<totsz;a++){
    //     if(a == totsz-1){
    //         printf("%.30f",Error_par_standard[a]);
    //     }
    //     else{
    //         printf("%.30f, ",Error_par_standard[a]);
    //     }
    // }
    // printf("]\n");

    printf("\nError_ozaki    = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.50f",Error_ozaki[a]);
        }
        else{
            printf("%.50f, ",Error_ozaki[a]);
        }
    }
    printf("]\n\n");

    printf("\nError_par_ozaki    = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.50f",Error_par_ozaki[a]);
        }
        else{
            printf("%.50f, ",Error_par_ozaki[a]);
        }
    }
    printf("]\n\n");

    // printf("\n # QUARTILE \n");
    // printf("\nquartile_err = [ %.30f, %.30f, %.30f]\n",prem_quart_err, medianne_err, trois_quart_err);
    // printf("\nquartile_par_standard = [ %.30f, %.30f, %.30f]\n",par_standard_prem_quart, par_standard_medianne, par_standard_trois_quart);
    // printf("\nquartile_ozaki = [ %.30f, %.30f, %.30f]\n",ozaki_prem_quart, ozaki_medianne, ozaki_trois_quart);
    // printf("\n # MOYENNE \n");
    // printf("\n\nmoy_err= [ %.30f]\n",moyenne_err);
    // printf("\nmoy_par_standard = [ %.30f]\n",par_standard_moyenne);
    // printf("\nmoy_ozaki = [ %.30f]\n",ozaki_moyenne);


    // std::vector<double> t1 = {0,1,2,5};
    // double resnear;
    // NearSum(t1,resnear);
    // printf("Result near : %.20f\n",resnear);
    
    return 0;
}