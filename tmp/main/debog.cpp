#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"


using namespace std;
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
    // mpfr_t Err_standard, Err_par_standard, Err_rare_blas ,Err_par_rare_blas;
    // mpfr_init2(Err_standard, P);
    // mpfr_init2(Err_par_standard, P);
    // mpfr_init2(Err_rare_blas, P);
    // mpfr_init2(Err_par_rare_blas, P);
    // mpfr_set_d(Err_standard, 0, MPFR_RNDN);
    // mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    // mpfr_set_d(Err_rare_blas, 0, MPFR_RNDN);
    // mpfr_set_d(Err_par_rare_blas, 0, MPFR_RNDN);
    class std::vector<double> a(n);
    class std::vector<double> b(n);

    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){

    double Err_standard, Err_par_standard, Err_rare_blas, Err_par_rare_blas;



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
    
    double d_correct = mpfr_get_d(res_mpfr, MPFR_RNDN);
    
    // // Print results
    // printf ("\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ RESULT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   \n");
    // printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.50f \n --------------------------------- \n", d_correct);
    // // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // // printf ("\n PARALLEL DOT PRODUCT : \n%.50f \n", res_par_standard);
    // printf ("\n SEQUENTIAL RARE BLAS : \n%.50f \n", res_rare_blas);  
    // // printf ("\n PARALLEL RARE BLAS : \n%.50f \n\n", res_par_rare_blas);   
    // printf ("\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ERROR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   \n");
    // // printf ("\n ERROR STANDARD DOT PRODUCT : \n%.50f \n", abs(res_standard - d_correct) );
    // // printf ("\n ERROR PARALLEL DOT PRODUCT : \n%.50f \n", abs(res_par_standard - d_correct));
    // printf ("\n ERROR SEQUENTIAL RARE BLAS : \n%.50f \n", abs(res_rare_blas - d_correct) );  
    // // printf ("\n ERROR PARALLEL RARE BLAS : \n%.50f \n\n", abs(res_par_rare_blas- d_correct));

    // Error

    int indice = nb*nb_gen + l;

    Err_standard = d_correct - res_standard;
    // Err_standard = Err_standard/d_correct;
    // Err_standard = abs(Err_standard);

    Err_par_standard = d_correct - res_par_standard;
    // Err_par_standard = Err_par_standard/d_correct;
    // Err_par_standard = abs(Err_par_standard);

    Err_rare_blas = d_correct - res_rare_blas;
        // Err_rare_blas = Err_rare_blas/d_correct;
        // Err_rare_blas = abs(Err_rare_blas);

    Err_par_rare_blas = d_correct - res_par_rare_blas;
        // Err_par_rare_blas = Err_par_rare_blas/d_correct;
        // Err_par_rare_blas = abs(Err_par_rare_blas);

    // mpfr_t tmp1,tmp2,restmp;
    // mpfr_init2(tmp1, P);
    // mpfr_set_d(tmp1, d_correct, MPFR_RNDN);
    // mpfr_init2(tmp2, P);
    // mpfr_set_d(tmp2, res_rare_blas, MPFR_RNDN);
    // mpfr_sub(restmp,tmp1,tmp2,MPFR_RNDN);
    // mpfr_printf("TEEESSSTTT : %.30Rg \n",restmp);

    if (Err_rare_blas != 0) {
        printf("Vec number %d : err = %.30f \n",l,Err_rare_blas);
        printf("a = \n");
        for (unsigned int i=0;i<n;i++){
            printf("%.50f \n",a[i]);
        }
        printf("\nb = \n");
        for (unsigned int i=0;i<n;i++){
            printf("%.50f \n",b[i]);
        }
        
    }
    // Save result
    Error_standard[indice] = Err_standard;
    Error_par_standard[indice] = Err_par_standard;
    Error_rare_blas[indice] = Err_rare_blas;
    Error_par_rare_blas[indice] = Err_par_rare_blas;
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////// MAIN ///////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




int main() {
    int nb_gen = 100;
    double sum = 20;
    int size = 3;
    double alpha = 0;
    int sz_err = 1;
    class std::vector<double> VCond(sz_err);
    VCond = {500000000000} ; 

    class std::vector<double> Error_standard(sz_err*nb_gen);
    class std::vector<double> Error_par_standard(sz_err*nb_gen);
    class std::vector<double> Error_rare_blas(sz_err*nb_gen);
    class std::vector<double> Error_par_rare_blas(sz_err*nb_gen);
    class std::vector<double> tmp(sz_err*nb_gen);

    // Real conditioning
    int totsz = nb_gen * sz_err;
    class std::vector<double> RCond(totsz);

    
    int nb_threads = 8;
    int i = 0;
    vector<double>::iterator k;
    for (k = VCond.begin(); k != VCond.end(); k++){
        // printf("\n __________________________________________ COND = %f __________________________________________\n",*k);
        // Exec dot prod
        // vec_gen_cond(nb_gen,size,*k,sum,1,RCond,i);                             
        compare_cond(size, *k, nb_gen,sum,Error_standard, Error_par_standard, Error_rare_blas,Error_par_rare_blas,1,i,nb_threads); 
        i += 1;
        // printf("Err sequential standard dot prod : %.30f \n",Error_standard[i*nb_gen-1]);
        // printf("Err parallel standard dot prod   : %.30f \n",Error_par_standard[i*nb_gen-1]);
        // printf("Err sequential RARE              : %.30f\n",Error_rare_blas[i*nb_gen-1]);
        // printf("Err parallel  RARE               : %.30f\n\n",Error_par_rare_blas[i*nb_gen-1]);
       
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

    
    int a;
    // printf("\n # COND  \n");
    // printf("\nRCond = [");
    // for (a=0; a<totsz;a++){
    //     if(a == totsz-1){
    //         printf("%.30f",RCond[a]);
    //     }
    //     else{
    //         printf("%.30f, ",RCond[a]);
    //     }
    // }
    // printf("]\n");

    // printf("\n # ERROR \n");
    // printf("\nError_standard = [");
    // for (a=0; a<totsz;a++){
    //     if(a == totsz-1){
    //         printf("%.30f",Error_standard[a]);
    //     }
    //     else{
    //         printf("%.30f, ",Error_standard[a]);
    //     }
    // }
    // printf("]\n");

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

    // printf("\nError_rare_blas = [");
    // for (a=0; a<totsz;a++){
    //     if(a == totsz-1){
    //         printf("%.30f",Error_rare_blas[a]);
    //     }
    //     else{
    //         printf("%.30f, ",Error_rare_blas[a]);
    //     }
    // }
    // printf("]\n");

    // printf("\nError_par_rare_blas = [");
    // for (a=0; a<totsz;a++){
    //     if(a == totsz-1){
    //         printf("%.30f",Error_par_rare_blas[a]);
    //     }
    //     else{
    //         printf("%.30f, ",Error_par_rare_blas[a]);
    //     }
    // }
    // printf("]\n");
    return 0;
}