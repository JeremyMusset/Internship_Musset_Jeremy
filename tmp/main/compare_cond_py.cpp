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
void compare_cond<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Error_standard, std::vector<double> &Error_par_standard, std::vector<double> &Error_rare_blas, std::vector<double> &Error_par_rare_blas, int q, int nb, int nb_threads);


/// @brief give error according to the cond
/// @tparam T 
/// @param n size
/// @param required_cond cond
/// @param nb_gen nb of gen
/// @param sum sum
/// @param Error_standard output
/// @param Error_par_standard output
/// @param Error_rare_blas output
/// @param Error_par_rare_blas output
/// @param q position of program
/// @param nb position into cond vector
template < class T >
void compare_cond(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Error_standard, std::vector<T> &Error_par_standard, std::vector<T> &Error_rare_blas, std::vector<T> &Error_par_rare_blas, int q, int nb, int nb_threads){

    // Error
    mpfr_t Err_standard, Err_par_standard, Err_rare_blas ,Err_par_rare_blas;
    mpfr_init2(Err_standard, P);
    mpfr_init2(Err_par_standard, P);
    mpfr_init2(Err_rare_blas, P);
    mpfr_init2(Err_par_rare_blas, P);
    mpfr_set_d(Err_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_rare_blas, 0, MPFR_RNDN);
    class std::vector<double> a(n);
    class std::vector<double> b(n);

    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){

    //////////////////////////////////////////////////////////////////
    //////////////////////// Data importation ////////////////////////
    //////////////////////////////////////////////////////////////////
      
    class std::vector<double> vec;
    import_vec(vec,l, q); 
   
    // Vectors importation 
    for (unsigned int i=0;i<n;i++){
        a[i] = vec[i+1];
        b[i] = vec[n+1+i]; 
    }

    double res_standard ,res_par_standard, res_rare_blas,res_par_rare_blas;

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
    ///////////////////// RARE BLAS DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_rare_blas = 0.0;

    res_rare_blas = Rare_blas_dot_prod_online(a,b,n);

    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// PAR RARE BLAS DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_par_rare_blas = 0.0;
    
    res_par_rare_blas = Par_rare_blas_dot_prod(a,b,n,8);
    
    
    
    // Print results
    mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    printf ("\n PARALLEL DOT PRODUCT : \n%.50f \n", res_par_standard);
    printf ("\n SEQUENTIAL RARE BLAS : \n%.50f \n", res_rare_blas);  
    printf ("\n SEQUENTIAL PAR RARE BLAS : \n%.50f \n\n", res_par_rare_blas);   

    // Error
    mpfr_t tmp,tmp2,tmp3,tmp4,tmp5,tmp6;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);
    mpfr_init2(tmp4, P);

    mpfr_sub_d(tmp,res_mpfr,res_standard,MPFR_RNDN);
    mpfr_div(tmp, tmp,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_standard, Err_standard,tmp,MPFR_RNDN);

    mpfr_sub_d(tmp2,res_mpfr,res_par_standard,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp2,tmp2,MPFR_RNDN);
    mpfr_add(Err_par_standard, Err_par_standard,tmp2,MPFR_RNDN);

    mpfr_sub_d(tmp3,res_mpfr,res_rare_blas,MPFR_RNDN);
    mpfr_div(tmp3,tmp3,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp3,tmp3,MPFR_RNDN);
    mpfr_add(Err_rare_blas, Err_rare_blas,tmp3,MPFR_RNDN);

    mpfr_sub_d(tmp4,res_mpfr,res_par_rare_blas,MPFR_RNDN);
    mpfr_div(tmp4,tmp4,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp4,tmp4,MPFR_RNDN);
    mpfr_add(Err_par_rare_blas, Err_par_rare_blas,tmp4,MPFR_RNDN);

    mpfr_clear(tmp);
    mpfr_clear(tmp2);
    mpfr_clear(tmp3);
    mpfr_clear(tmp4);


    mpfr_div_si(Err_standard,Err_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_standard,Err_par_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_rare_blas,Err_rare_blas,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_rare_blas,Err_par_rare_blas,nb_gen,MPFR_RNDN);

    int indice = nb*nb_gen + l;
    // Save result
    Error_standard[indice] = mpfr_get_d(Err_standard,MPFR_RNDN);
    Error_par_standard[indice] = mpfr_get_d(Err_par_standard,MPFR_RNDN);
    Error_rare_blas[indice] = mpfr_get_d(Err_rare_blas,MPFR_RNDN);
    Error_par_rare_blas[indice] = mpfr_get_d(Err_par_rare_blas,MPFR_RNDN);
    }
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////// MAIN ///////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




int main() {
    int nb_gen = 20;
    double sum = 200;
    int size = 1000;


    int sz_err = 20;
    class std::vector<double> VCond(sz_err);
    VCond = {1, 5, 10, 50, 100, 1000, 5000, 10000,50000, 100000, 500000, 1000000, 5000000, 10000000, 100000000,5000000000, 10000000000,50000000000,500000000000, 1000000000000} ; 

    class std::vector<double> Error_standard(sz_err*nb_gen);
    class std::vector<double> Error_par_standard(sz_err*nb_gen);
    class std::vector<double> Error_rare_blas(sz_err*nb_gen);
    class std::vector<double> Error_par_rare_blas(sz_err*nb_gen);
    class std::vector<double> tmp(sz_err*nb_gen);

    // Real conditioning
    int totsz = nb_gen * sz_err;
    class std::vector<double> RCond(totsz);

    
    int nb_threads = 8;
    int alpha;
    int i = 0;
    vector<double>::iterator k;
    for (k = VCond.begin(); k != VCond.end(); k++){
        printf("\n __________________________________________ COND = %f __________________________________________\n",*k);
        // Exec dot prod
        vec_gen_cond(nb_gen,size,*k,sum,1,RCond,i);
        compare_cond(size, *k, nb_gen,sum,Error_standard, Error_par_standard, Error_rare_blas,Error_par_rare_blas,1,i,nb_threads); 
        i += 1;
        printf("Err sequential standard dot prod : %.30f \n",Error_standard[i*nb_gen-1]);
        printf("Err parallel standard dot prod   : %.30f \n",Error_par_standard[i*nb_gen-1]);
        printf("Err sequential RARE              : %.30f\n",Error_rare_blas[i*nb_gen-1]);
        printf("Err parallel  RARE               : %.30f\n\n",Error_par_rare_blas[i*nb_gen-1]);
       
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

                temp = Error_rare_blas[j];
                Error_rare_blas[j] = Error_rare_blas[j + 1];
                Error_rare_blas[j + 1] = temp;

                temp = Error_par_rare_blas[j];
                Error_par_rare_blas[j] = Error_par_rare_blas[j + 1];
                Error_par_rare_blas[j + 1] = temp;

        
            }
        }
    }


    // Quartile sort 
    class std::vector<double> QError_standard(sz_err*nb_gen);
    class std::vector<double> QError_par_standard(sz_err*nb_gen);
    class std::vector<double> QError_rare_blas(sz_err*nb_gen);
    class std::vector<double> QError_par_rare_blas(sz_err*nb_gen);

    for (int i = 0; i < nb_gen*sz_err; i++) {
        QError_standard[i] = Error_standard[i];
        QError_par_standard[i] = Error_par_standard[i];
        QError_rare_blas[i] = Error_rare_blas[i];
        QError_par_rare_blas[i] = Error_par_rare_blas[i];
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
            if (QError_rare_blas[j] > QError_rare_blas[j + 1]) {
                temp = QError_rare_blas[j];
                QError_rare_blas[j] = QError_rare_blas[j + 1];
                Error_rare_blas[j + 1] = temp;
            }
            if (QError_par_rare_blas[j] > QError_par_rare_blas[j + 1]) {
                temp = QError_par_rare_blas[j];
                QError_par_rare_blas[j] = QError_par_rare_blas[j + 1];
                Error_par_rare_blas[j + 1] = temp;
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


    // Err Stats serial rare blas
    double rare_blas_moyenne = 0;
    double rare_blas_prem_quart;
    double rare_blas_trois_quart;
    double rare_blas_medianne;
   


    for (unsigned int i=0; i<totsz;i++){
        rare_blas_moyenne += Error_rare_blas[i];
    }
    rare_blas_moyenne /= (totsz);

    rare_blas_prem_quart = QError_rare_blas[(totsz) / 4];
    rare_blas_trois_quart = QError_rare_blas[3*(totsz) / 4];
    rare_blas_medianne = QError_rare_blas[(totsz) / 2];


    // Err Stats parallel rare blas
    double par_rare_blas_moyenne = 0;
    double par_rare_blas_prem_quart;
    double par_rare_blas_trois_quart;
    double par_rare_blas_medianne;
   


    for (unsigned int i=0; i<totsz;i++){
        par_rare_blas_moyenne += Error_par_rare_blas[i];
    }
    par_rare_blas_moyenne /= (totsz);

    par_rare_blas_prem_quart = QError_par_rare_blas[(totsz) / 4];
    par_rare_blas_trois_quart = QError_par_rare_blas[3*(totsz) / 4];
    par_rare_blas_medianne = QError_par_rare_blas[(totsz) / 2];


    int a;
    printf("\n # COND  \n");
    printf("\nRCond = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.30f",RCond[a]);
        }
        else{
            printf("%.30f, ",RCond[a]);
        }
    }
    printf("]\n");
    printf("\nquartile_cond = [ %.30f, %.30f, %.30f]\n",prem_quart_cond, medianne_cond, trois_quart_cond);
    printf("\n\nmoy_cond = [ %.30f]\n",moyenne_cond);


    printf("\n # ERROR \n");
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

    printf("\nError_par_standard = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.30f",Error_par_standard[a]);
        }
        else{
            printf("%.30f, ",Error_par_standard[a]);
        }
    }
    printf("]\n");

    printf("\nError_rare_blas = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.30f",Error_rare_blas[a]);
        }
        else{
            printf("%.30f, ",Error_rare_blas[a]);
        }
    }
    printf("]\n");

    printf("\nError_par_rare_blas = [");
    for (a=0; a<totsz;a++){
        if(a == totsz-1){
            printf("%.30f",Error_par_rare_blas[a]);
        }
        else{
            printf("%.30f, ",Error_par_rare_blas[a]);
        }
    }
    printf("]\n");
    printf("\n # QUARTILE \n");
    printf("\nquartile_err = [ %.30f, %.30f, %.30f]\n",prem_quart_err, medianne_err, trois_quart_err);
    printf("\nquartile_par_standard = [ %.30f, %.30f, %.30f]\n",par_standard_prem_quart, par_standard_medianne, par_standard_trois_quart);
    printf("\nquartile_rare_blas = [ %.30f, %.30f, %.30f]\n",rare_blas_prem_quart, rare_blas_medianne, rare_blas_trois_quart);
    printf("\nquartile_par_rare_blas = [ %.30f, %.30f, %.30f]\n",par_rare_blas_prem_quart, par_rare_blas_medianne, par_rare_blas_trois_quart);
    printf("\n # MOYENNE \n");
    printf("\n\nmoy_err= [ %.30f]\n",moyenne_err);
    printf("\nmoy_par_standard = [ %.30f]\n",par_standard_moyenne);
    printf("\nmoy_rare = [ %.30f]\n",rare_blas_moyenne);
    printf("\nmoy_par_rare = [ %.30f]\n",par_rare_blas_moyenne);



    return 0;
}