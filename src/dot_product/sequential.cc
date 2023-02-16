#include <cmath>
#include "../../include/serial.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000
#define NB_EXEC 10

template
void seq_dot_prod<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int sz);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param sum 
/// @param Time Output
/// @param Error Output
/// @param sz Size of output (5)
template < class T >
void seq_dot_prod(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int sz){

       
    // Error
    mpfr_t Err_common,Err_rare_blas,Err_ozaki,Err_ex_blas;
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_rare_blas, P);
    mpfr_init2(Err_ozaki, P);
    mpfr_init2(Err_ex_blas, P);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas, 0, MPFR_RNDN);
    mpfr_set_d(Err_ozaki, 0, MPFR_RNDN);
    mpfr_set_d(Err_ex_blas, 0, MPFR_RNDN);
    
    // Time 
    double Time_mpfr,Time_common,Time_rare_blas;
    Time_mpfr = 0;
    Time_common = 0;
    Time_rare_blas = 0;

    class std::vector<double> a(n);
    class std::vector<double> b(n);
    
    // Vectors generation
    // vec_gen(nb_gen,n,required_cond,sum);
    
    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){
        // printf("\n\n---------------------- DATA FILE N°%d ----------------------\n",l);

    //////////////////////////////////////////////////////////////////
    //////////////////////// Data importation ////////////////////////
    //////////////////////////////////////////////////////////////////
      
    class std::vector<double> vec;
    import_vec(vec,l); 
    // Vectors importation 
    for (unsigned int i=0;i<n;i++){
        a[i] = vec[i+1];
        b[i] = vec[n+1+i];
        if (l==0) {
        printf(" aseq = %.41f \n",a[i]);
        }
    }
        
    double res_common,res_rare_blas;
    

    //////////////////////////////////////////////////////////////////
    //////////////////////// MPFR_dot product ////////////////////////
    //////////////////////////////////////////////////////////////////

    mpfr_t res_mpfr;
    struct timespec start_mpfr, end_mpfr;
    mpfr_t a_mpfr[n], b_mpfr[n];
    for (unsigned int i = 0; i < n; i++){
        mpfr_init2(a_mpfr[i], P);
        mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
        mpfr_init2(b_mpfr[i], P);
        mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
    } 
    mpfr_init2(res_mpfr,P);
    mpfr_set_d(res_mpfr,0,MPFR_RNDN);

    clock_gettime(CLOCK_REALTIME,&start_mpfr);
    for (unsigned int t=0; t<NB_EXEC;t++){
        dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);
    }
    clock_gettime(CLOCK_REALTIME,&end_mpfr); 

    Time_mpfr = ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec)); 

        
    ////////////////////////////////////////////////////////////////////
    //////////////////////// COMMON DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_common, end_common;
    res_common = 0.0;
        
    clock_gettime(CLOCK_REALTIME,&start_common);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_common = common_dot_prod(a,b,n,1,1);
    }
    clock_gettime(CLOCK_REALTIME,&end_common);  

    Time_common += ((double)(end_common.tv_nsec - start_common.tv_nsec) );


    ////////////////////////////////////////////////////////////////////
    ///////////////////// RARE-BLAS DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_rare_blas, end_rare_blas;
    res_rare_blas = 0.0;

    clock_gettime(CLOCK_REALTIME,&start_rare_blas);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_rare_blas = Rare_blas_dot_prod_hybrid(a,b,n);
    }
    clock_gettime(CLOCK_REALTIME,&end_rare_blas);     

    Time_rare_blas += ((double)(end_rare_blas.tv_nsec - start_rare_blas.tv_nsec));

    

   
    
    // Print results
    // mpfr_printf ("\n CORRECT ROUNDING : \n%.41Rg \n", final_res_mpfr);
    // printf ("\n COMMON DOT PRODUCT : \n%.41f \n", final_res_common);
    // printf ("\n RARE BLAS DOT PRODUCT : \n%.41f \n\n", final_res_rare_blas);    

    // Error
    mpfr_t tmp,tmp2;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_sub_d(tmp,res_mpfr,res_common,MPFR_RNDN);
    mpfr_div(tmp,tmp,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_common, Err_common,tmp,MPFR_RNDN);

    mpfr_sub_d(tmp,res_mpfr,res_rare_blas,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp2,tmp2,MPFR_RNDN);
    mpfr_add(Err_rare_blas, Err_rare_blas,tmp2,MPFR_RNDN);

    }
    // Time mpfr
    Time_mpfr = Time_mpfr / (nb_gen*NB_EXEC);
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time common
    Time_common =Time_common / (nb_gen*NB_EXEC);
    // printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);

    // Time rare blas
    Time_rare_blas = Time_rare_blas / (nb_gen*NB_EXEC);
    // printf("TIME RARE BLAS : %.45f \n",Time_rare_blas);

    Time[0] = Time_mpfr;
    Time[1] = Time_common;
    Time[2] = Time_rare_blas;
    Time[3] = 0;
    Time[4] = 0; 

    mpfr_div_si(Err_common,Err_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_rare_blas,Err_rare_blas,nb_gen,MPFR_RNDN);

    mpfr_set_d(Error[0], 0, MPFR_RNDN);
    mpfr_set(Error[1], Err_common, MPFR_RNDN);
    mpfr_set(Error[2], Err_rare_blas, MPFR_RNDN);
    mpfr_set(Error[3], Err_ozaki, MPFR_RNDN);
    mpfr_set(Error[4], Err_ex_blas, MPFR_RNDN);


}