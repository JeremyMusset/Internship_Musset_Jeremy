#include <cmath>
#include <mkl.h>
#include "/home/jerem/app/blaspp/include/blas.hh"
#include "../../include/compare.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000
#define NB_EXEC 10

template
void compare_dot_prod<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int q);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param sum 
/// @param Time Output size 6
/// @param Error Output size 6
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
template < class T >
void compare_dot_prod(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int q){

       
    // Error
    mpfr_t Err_common,Err_mkl,Err_blaspp;
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_mkl, P);
    mpfr_init2(Err_blaspp, P);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_mkl, 0, MPFR_RNDN);
    mpfr_set_d(Err_blaspp, 0, MPFR_RNDN);

    // Time 
    double Time_mpfr,Time_common,Time_mkl,Time_blaspp;
    Time_mpfr = 0;
    Time_common = 0;
    Time_mkl = 0;
    Time_blaspp = 0;

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
        
    double res_common,res_mkl,res_blaspp;
    

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
    dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);
    clock_gettime(CLOCK_REALTIME,&end_mpfr); 

    Time_mpfr += ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec)); 

        
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
    ///////////////////// MKL DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_mkl, end_mkl;
    res_mkl = 0.0;


    double *amkl;
    amkl = (double *) malloc(n*sizeof(double)); 
    double *bmkl;
    bmkl = (double *) malloc(n*sizeof(double)); 
    for (unsigned int i = 0; i<n;i++){
        amkl[i] = a[i];
        bmkl[i] = b[i];
    }

    // MKL_INT nmkl,incx,incy;

    clock_gettime(CLOCK_REALTIME,&start_mkl);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_mkl = cblas_ddot(n,amkl,1,bmkl,1);
    }
    clock_gettime(CLOCK_REALTIME,&end_mkl); 

    Time_mkl += ((double)(end_mkl.tv_nsec - start_mkl.tv_nsec));

    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// BLASPP DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_blaspp, end_blaspp;
    res_blaspp = 0.0;

    double *app;
    app = (double *) malloc(n*sizeof(double)); 
    double *bpp;
    bpp = (double *) malloc(n*sizeof(double)); 
    for (unsigned int i = 0; i<n;i++){
        app[i] = a[i];
        bpp[i] = b[i];
    }

    // MKL_INT nmkl,incx,incy;

    clock_gettime(CLOCK_REALTIME,&start_blaspp);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_blaspp = blas::dot(n,app,1,bpp,1);
    }
    clock_gettime(CLOCK_REALTIME,&end_blaspp); 

    Time_blaspp += ((double)(end_blaspp.tv_nsec - start_blaspp.tv_nsec));

   
    
    // Print results
    // mpfr_printf ("\n SEQUENTIAL CORRECT ROUNDING : \n%.41Rg \n", res_mpfr);
    // printf ("\n SEQUENTIAL COMMON DOT PRODUCT : \n%.41f \n", res_common);
    // printf ("\n SEQUENTIAL MKL : \n%.41f \n\n", res_mkl);    

    // Error
    mpfr_t tmp,tmp2,tmp3;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);

    mpfr_sub_d(tmp,res_mpfr,res_common,MPFR_RNDN);
    mpfr_div(tmp,tmp,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_common, Err_common,tmp,MPFR_RNDN);

    mpfr_sub_d(tmp2,res_mpfr,res_mkl,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp2,tmp2,MPFR_RNDN);
    mpfr_add(Err_mkl, Err_mkl,tmp2,MPFR_RNDN);

    mpfr_sub_d(tmp3,res_mpfr,res_blaspp,MPFR_RNDN);
    mpfr_div(tmp3,tmp3,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp3,tmp3,MPFR_RNDN);
    mpfr_add(Err_blaspp, Err_blaspp,tmp3,MPFR_RNDN);

    }
    // Time mpfr
    Time_mpfr = Time_mpfr / nb_gen;
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time common
    Time_common =Time_common / (nb_gen*NB_EXEC);
    // printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);

    // Time MKL
    Time_mkl = Time_mkl / (nb_gen*NB_EXEC);
    // printf("TIME MKL : %.45f \n",Time_mkl);

     // Time blaspp
    Time_blaspp = Time_blaspp / (nb_gen*NB_EXEC);
    // printf("TIME BLASPP : %.45f \n",Time_blaspp);


    Time[0] = Time_mpfr;
    Time[1] = Time_common;
    Time[2] = Time_mkl;
    Time[3] = Time_blaspp;

    mpfr_div_si(Err_common,Err_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_mkl,Err_mkl,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_blaspp,Err_blaspp,nb_gen,MPFR_RNDN);

    mpfr_set_d(Error[0], 0, MPFR_RNDN);
    mpfr_set(Error[1], Err_common, MPFR_RNDN);
    mpfr_set(Error[2], Err_mkl, MPFR_RNDN);
    mpfr_set(Error[3], Err_blaspp, MPFR_RNDN);

    
}