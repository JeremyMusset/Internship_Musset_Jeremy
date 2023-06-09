#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"


using namespace std;

#define P 4000


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////// FONCTION /////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


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
void compare_cond_deb(int n,double required_cond, double &Err_standard, double &Err_rare_blas, double &Err_par_rare_blas, int q, int nb_threads){

    // Error
    class std::vector<double> a(n);
    class std::vector<double> b(n);

    int l = 1;
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
    printf("a = \n");
    for (unsigned int i=0;i<n;i++){
        printf("%.50f \n",a[i]);
    }
    printf("\nb = \n");
    printf("%.50f \n",b[1]);
    // printf("a = \n");
    // for (unsigned int i=0;i<n;i++){
    //     printf("%.50f \n",a[i]);
    // }
    // printf("\nb = \n");
    // printf("%.50f \n",b[1]);

    double res_standard , res_rare_blas,res_par_rare_blas;

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

    Err_standard = d_correct - res_standard;
    // Err_standard = Err_standard/d_correct;
    // Err_standard = abs(Err_standard);

    Err_rare_blas = d_correct - res_rare_blas;
        // Err_rare_blas = Err_rare_blas/d_correct;
        // Err_rare_blas = abs(Err_rare_blas);

    Err_par_rare_blas = d_correct - res_par_rare_blas;
        // Err_par_rare_blas = Err_par_rare_blas/d_correct;
        // Err_par_rare_blas = abs(Err_par_rare_blas);

    // Print results
    // printf ("\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ RESULT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   \n");
    printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.70f \n --------------------------------- \n", d_correct);
    // mpfr_printf ("\n --------------------------------- \n MPFR CORRECT : \n %.70Rg \n --------------------------------- \n", res_mpfr);
    // // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    printf ("\n SEQUENTIAL RARE BLAS : \n%.70f \n", res_rare_blas);  
    // // printf ("\n PARALLEL RARE BLAS : \n%.50f \n\n", res_par_rare_blas);   
    // printf ("\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ERROR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~   \n");
    // // printf ("\n ERROR STANDARD DOT PRODUCT : \n%.50f \n", abs(res_standard - d_correct) );
    printf ("\n ERROR SEQUENTIAL RARE BLAS : \n %.70f \n", Err_rare_blas );  
    // // printf ("\n ERROR PARALLEL RARE BLAS : \n%.50f \n\n", abs(res_par_rare_blas- d_correct));
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////// MAIN ///////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




int main() {
    int nb_gen = 100;
    double sum = 20;
    int size = 100;
    int sz_err = 1;
    class std::vector<double> VCond(sz_err);
    VCond = {500000000000}; 

    double Err_standard, Err_rare_blas,Err_par_rare_blas;

    // Real conditioning
    int totsz = nb_gen * sz_err;
    class std::vector<double> RCond(totsz);
    int nb_threads = 8;
    compare_cond_deb(size, 500000000000, Err_standard, Err_rare_blas,Err_par_rare_blas,1,nb_threads); 

    return 0;
}