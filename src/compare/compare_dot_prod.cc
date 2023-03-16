#include <cmath>
#include <mkl.h>
#include "/home/jerem/app/blaspp/include/blas/dot.hh"
#include "../../include/compare.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/parallelisation.h"
#include <thread>

using namespace std;

#define P 4000
#define NB_EXEC 5

template
void compare_dot_prod<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int q, int nb_threads);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param sum 
/// @param Time Output size 6
/// @param Error Output size 6
/// @param nb_threads Number of threads for parallel
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
template < class T >
void compare_dot_prod(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int q,int nb_threads){

    // Error
    mpfr_t Err_standard,Err_common,Err_par_standard,Err_par_common,Err_mkl,Err_blaspp;
    mpfr_init2(Err_standard, P);
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_par_standard, P);
    mpfr_init2(Err_par_common, P);
    mpfr_init2(Err_mkl, P);
    mpfr_init2(Err_blaspp, P);
    mpfr_set_d(Err_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_mkl, 0, MPFR_RNDN);
    mpfr_set_d(Err_blaspp, 0, MPFR_RNDN);

    // Time 
    double Time_mpfr,Time_standard,Time_common,Time_par_standard,Time_par_common,Time_mkl,Time_blaspp;
    Time_mpfr = 0;
    Time_standard = 0;
    Time_common = 0;
    Time_par_standard = 0;
    Time_par_common = 0;
    Time_mkl = 0;
    Time_blaspp = 0;

    double Min_Time_standard,Min_Time_common,Min_Time_par_standard,Min_Time_par_common,Min_Time_mkl,Min_Time_blaspp;
    Min_Time_standard = 0;
    Min_Time_common = 0;
    Min_Time_par_standard = 0;
    Min_Time_par_common = 0;
    Min_Time_mkl = 0;
    Min_Time_blaspp = 0;


     double Final_Min_Time_standard,Final_Min_Time_common,Final_Min_Time_par_standard,Final_Min_Time_par_common,Final_Min_Time_mkl,Final_Min_Time_blaspp;
    Final_Min_Time_standard = 0;
    Final_Min_Time_common = 0;
    Final_Min_Time_par_standard = 0;
    Final_Min_Time_par_common = 0;
    Final_Min_Time_mkl = 0;
    Final_Min_Time_blaspp = 0;

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

    double res_standard,res_common,res_par_standard,res_par_common,res_mkl,res_blaspp;

    //////////////////////////////////////////////////////////////////
    //////////////////////// MPFR_dot product ////////////////////////
    //////////////////////////////////////////////////////////////////
    
    mpfr_t res_mpfr;
    struct timespec start_mpfr, end_mpfr;
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
    
    clock_gettime(CLOCK_REALTIME,&start_mpfr);
    dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);
    clock_gettime(CLOCK_REALTIME,&end_mpfr); 
    Time_mpfr += ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec)); 

    for (unsigned int i = 0; i < n; i++){
        mpfr_clear(a_mpfr[i]);
        mpfr_clear(b_mpfr[i]);
    } 

    ////////////////////////////////////////////////////////////////////
    //////////////////////// STANDARD DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_standard, end_standard, Min_start_standard, Min_end_standard;
    double time_tmp;
    // Cache warmup 
    res_standard = 0.0;
    for (unsigned int j=0; j<n;j++){
        res_standard += a[j]*b[j];
    }
    clock_gettime(CLOCK_REALTIME,&start_standard);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_standard = 0.0;
        clock_gettime(CLOCK_REALTIME,&Min_start_standard); 
        for (unsigned int j=0; j<n;j++){
            res_standard += a[j]*b[j];
        }
        clock_gettime(CLOCK_REALTIME,&Min_end_standard); 
        time_tmp = ((Min_end_standard.tv_sec - Min_start_standard.tv_sec) * 1000000000 + (Min_end_standard.tv_nsec - Min_start_standard.tv_nsec) );
         if (t==0){
            Min_Time_standard = time_tmp;
        }
        if (time_tmp < Min_Time_standard){
            Min_Time_standard = time_tmp;
        }
    }
    clock_gettime(CLOCK_REALTIME,&end_standard);  
    Final_Min_Time_standard += Min_Time_standard;
    Time_standard += ((end_standard.tv_sec - start_standard.tv_sec) * 1000000000 + (end_standard.tv_nsec - start_standard.tv_nsec) );

    ////////////////////////////////////////////////////////////////////
    //////////////////////// COMMON DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_common, end_common,Min_start_common, Min_end_common;
    res_common = 0.0;
    res_common = common_dot_prod(a,b,n,1,1);

    clock_gettime(CLOCK_REALTIME,&start_common);
    for (unsigned int t=0; t<NB_EXEC;t++){
        clock_gettime(CLOCK_REALTIME,&Min_start_common); 
        res_common = common_dot_prod(a,b,n,1,1);
        clock_gettime(CLOCK_REALTIME,&Min_end_common); 
        time_tmp = ((Min_end_common.tv_sec - Min_start_common.tv_sec) * 1000000000 + (Min_end_common.tv_nsec - Min_start_common.tv_nsec) );
         if (t==0){
            Min_Time_common = time_tmp;
        }
        if (time_tmp < Min_Time_common){
            Min_Time_common = time_tmp;
        }
    }
    clock_gettime(CLOCK_REALTIME,&end_common);  
    Final_Min_Time_common += Min_Time_common;
    Time_common += ((end_common.tv_sec - start_common.tv_sec) * 1000000000 + (end_common.tv_nsec - start_common.tv_nsec) );


    ////////////////////////////////////////////////////////////////////
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_standard, end_par_standard;

    omp_set_num_threads(nb_threads);
    clock_gettime(CLOCK_REALTIME,&start_par_standard);

    res_par_standard = 0.0; 
    #pragma omp parallel for reduction(+:res_par_standard)
    for (unsigned int j=0; j<n;j++){
        res_par_standard += a[j]*b[j];
    }

    for (unsigned int t=0; t<NB_EXEC;t++){
        
        res_par_standard = 0.0; 
        #pragma omp parallel for reduction(+:res_par_standard)
        for (unsigned int j=0; j<n;j++){
            res_par_standard += a[j]*b[j];
        }
        
    }
    clock_gettime(CLOCK_REALTIME,&end_par_standard);  

    Time_par_standard += ((end_par_standard.tv_sec - start_par_standard.tv_sec) * 1000000000 + (end_par_standard.tv_nsec - start_par_standard.tv_nsec) );

    ////////////////////////////////////////////////////////////////////
    /////////////////// PARALLEL COMMON DOT PRODUCT ////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_common, end_par_common;
    res_par_common = 0.0;
    res_par_common = par_common_dot_prod(a,b,n,1,1,nb_threads);    
    clock_gettime(CLOCK_REALTIME,&start_par_common);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_par_common = par_common_dot_prod(a,b,n,1,1,nb_threads);
    }
    clock_gettime(CLOCK_REALTIME,&end_par_common);  

    Time_par_common += ((end_par_common.tv_sec - start_par_common.tv_sec) * 1000000000 + (end_par_common.tv_nsec - start_par_common.tv_nsec) );


    ////////////////////////////////////////////////////////////////////
    ///////////////////// MKL DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_mkl, end_mkl,Min_start_mkl, Min_end_mkl;
    res_mkl = 0.0;


    double *amkl;
    amkl = (double *) malloc(n*sizeof(double)); 
    double *bmkl;
    bmkl = (double *) malloc(n*sizeof(double)); 
    for (unsigned int i = 0; i<n;i++){
        amkl[i] = a[i];
        bmkl[i] = b[i];
    }
    res_mkl = cblas_ddot(n,amkl,1,bmkl,1);
    clock_gettime(CLOCK_REALTIME,&start_mkl);
    for (unsigned int t=0; t<NB_EXEC;t++){

        clock_gettime(CLOCK_REALTIME,&Min_start_mkl); 

        res_mkl = cblas_ddot(n,amkl,1,bmkl,1);

        clock_gettime(CLOCK_REALTIME,&Min_end_mkl); 
        time_tmp = ((Min_end_mkl.tv_sec - Min_start_mkl.tv_sec) * 1000000000 + (Min_end_mkl.tv_nsec - Min_start_mkl.tv_nsec) );
         if (t==0){
            Min_Time_mkl = time_tmp;
        }
        if (time_tmp < Min_Time_mkl){
            Min_Time_mkl = time_tmp;
        }
    }
    clock_gettime(CLOCK_REALTIME,&end_mkl); 
    Final_Min_Time_mkl += Min_Time_mkl;
    Time_mkl += ((end_mkl.tv_sec - start_mkl.tv_sec) * 1000000000 + (end_mkl.tv_nsec - start_mkl.tv_nsec));

    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// BLASPP DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_blaspp, end_blaspp,Min_start_blaspp, Min_end_blaspp;
    res_blaspp = 0.0;

    double *app;
    app = (double *) malloc(n*sizeof(double)); 
    double *bpp;
    bpp = (double *) malloc(n*sizeof(double)); 
    for (unsigned int i = 0; i<n;i++){
        app[i] = a[i];
        bpp[i] = b[i];
    }
    res_blaspp = blas::dot(n,app,1,bpp,1);
    clock_gettime(CLOCK_REALTIME,&start_blaspp);
    for (unsigned int t=0; t<NB_EXEC;t++){

        clock_gettime(CLOCK_REALTIME,&Min_start_blaspp); 

        res_blaspp = blas::dot(n,app,1,bpp,1);

        clock_gettime(CLOCK_REALTIME,&Min_end_blaspp); 
        
        time_tmp = ((Min_end_blaspp.tv_sec - Min_start_blaspp.tv_sec) * 1000000000 + (Min_end_blaspp.tv_nsec - Min_start_blaspp.tv_nsec) );
        if (t==0){
            Min_Time_blaspp = time_tmp;
        }
        if (time_tmp < Min_Time_blaspp){
            Min_Time_blaspp = time_tmp;
        }

    }
    clock_gettime(CLOCK_REALTIME,&end_blaspp); 
    Final_Min_Time_blaspp += Min_Time_blaspp;
    Time_blaspp += ((end_blaspp.tv_sec - start_blaspp.tv_sec) * 1000000000 + (end_blaspp.tv_nsec - start_blaspp.tv_nsec));

    
    // Print results
    // mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // printf ("\n SEQUENTIAL COMMON DOT PRODUCT : \n%.50f \n", res_common);
    // printf ("\n SEQUENTIAL MKL : \n%.50f \n", res_mkl);  
    // printf ("\n SEQUENTIAL BLASPP : \n%.50f \n\n", res_blaspp);   

    // Error
    mpfr_t tmp,tmp2,tmp3,tmp4,tmp5, tmp6;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);
    mpfr_init2(tmp4, P);
    mpfr_init2(tmp5, P);
    mpfr_init2(tmp6, P);


    mpfr_sub_d(tmp4,res_mpfr,res_standard,MPFR_RNDN);
    mpfr_div(tmp4,tmp4,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp4,tmp4,MPFR_RNDN);
    mpfr_add(Err_standard, Err_standard,tmp4,MPFR_RNDN);

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

    mpfr_sub_d(tmp5,res_mpfr,res_par_standard,MPFR_RNDN);
    mpfr_div(tmp5,tmp5,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp5,tmp5,MPFR_RNDN);
    mpfr_add(Err_par_standard, Err_par_standard,tmp5,MPFR_RNDN);

    mpfr_sub_d(tmp6,res_mpfr,res_par_common,MPFR_RNDN);
    mpfr_div(tmp6,tmp6,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp6,tmp6,MPFR_RNDN);
    mpfr_add(Err_par_common, Err_par_common,tmp6,MPFR_RNDN);

    mpfr_clear(tmp);
    mpfr_clear(tmp2);
    mpfr_clear(tmp3);
    mpfr_clear(tmp4);
    mpfr_clear(tmp5);
    mpfr_clear(tmp6);

    }
    // Time mpfr
    Time_mpfr = Time_mpfr / nb_gen;
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time standard
    Time_standard = Time_standard / (nb_gen*NB_EXEC);
    // printf("TIME STANDARD DOT PRODUCT : %.45f \n",Time_standard);

    // Time common
    Time_common =Time_common / (nb_gen*NB_EXEC);
    // printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);


     // Time par standard
    Time_par_standard = Time_par_standard / (nb_gen*NB_EXEC);
    // printf("TIME PAR STANDARD DOT PRODUCT : %.45f \n",Time_par_standard);

    // Time par common
    Time_par_common =Time_par_common / (nb_gen*NB_EXEC);
    // printf("TIME PAR COMMON DOT PRODUCT : %.45f \n",Time_par_common);

    // Time MKL
    Time_mkl = Time_mkl / (nb_gen*NB_EXEC);
    // printf("TIME MKL : %.45f \n",Time_mkl);

     // Time blaspp
    Time_blaspp = Time_blaspp / (nb_gen*NB_EXEC);
    // printf("TIME BLASPP : %.45f \n",Time_blaspp);






    // Final_Min_Time standard
    Final_Min_Time_standard = Final_Min_Time_standard / (nb_gen);
    // printf("Final_Min_Time STANDARD DOT PRODUCT : %.45f \n",Final_Min_Time_standard);

    // Final_Min_Time common
    Final_Min_Time_common =Final_Min_Time_common / (nb_gen);
    // printf("Final_Min_Time COMMON DOT PRODUCT : %.45f \n",Final_Min_Time_common);


    // Final_Min_Time MKL
    Final_Min_Time_mkl = Final_Min_Time_mkl / (nb_gen);
    // printf("Final_Min_Time MKL : %.45f \n",Final_Min_Time_mkl);

     // Final_Min_Time blaspp
    Final_Min_Time_blaspp = Final_Min_Time_blaspp / (nb_gen);
    // printf("Final_Min_Time BLASPP : %.45f \n",Final_Min_Time_blaspp);


    // Average time

    // Time[0] = Time_mpfr;
    // Time[1] = Time_standard;
    // Time[2] = Time_common;
    // Time[3] = Time_par_standard;
    // Time[4] = Time_par_common;
    // Time[5] = Time_mkl;
    // Time[6] = Time_blaspp;


    // Min time
    Time[0] = Time_mpfr;
    Time[1] = Final_Min_Time_standard;
    Time[2] = Final_Min_Time_common;
    Time[3] = Time_par_standard;
    Time[4] = Time_par_common;
    Time[5] = Final_Min_Time_mkl;
    Time[6] = Final_Min_Time_blaspp;

    mpfr_div_si(Err_standard,Err_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_common,Err_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_standard,Err_par_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_common,Err_par_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_mkl,Err_mkl,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_blaspp,Err_blaspp,nb_gen,MPFR_RNDN);

    mpfr_set_d(Error[0], 0, MPFR_RNDN);
    mpfr_set(Error[1], Err_standard, MPFR_RNDN);
    mpfr_set(Error[2], Err_common, MPFR_RNDN);
    mpfr_set(Error[3], Err_par_standard, MPFR_RNDN);
    mpfr_set(Error[4], Err_par_common, MPFR_RNDN);
    mpfr_set(Error[5], Err_mkl, MPFR_RNDN);
    mpfr_set(Error[6], Err_blaspp, MPFR_RNDN);

    // mpfr_clear(Err_standard);
    // mpfr_clear(Err_common);
    // mpfr_clear(Err_par_common);
    // mpfr_clear(Err_standard);
    // mpfr_clear(Err_mkl);
    // mpfr_clear(Err_blaspp);
}



/////////////////////////////////////////// TH ///////////////////////////////////////////////////////////////////////////


template
void compare_dot_prod_th<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int q, int nb_threads);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param sum 
/// @param Time Output size 6
/// @param Error Output size 6
/// @param nb_threads Number of threads for parallel
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
template < class T >
void compare_dot_prod_th(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int q,int nb_threads){

    omp_set_num_threads(nb_threads);
    // Time 
    double Time_par_standard,Time_par_common;
    Time_par_standard = 0;
    Time_par_common = 0;

    class std::vector<double> a(n);
    class std::vector<double> b(n);

    // Error
    mpfr_t Err_par_standard,Err_par_common;
    mpfr_init2(Err_par_standard, P);
    mpfr_init2(Err_par_common, P);
    mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_common, 0, MPFR_RNDN);



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

    double res_par_standard,res_par_common;

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
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_standard, end_par_standard;

    
    clock_gettime(CLOCK_REALTIME,&start_par_standard);
    for (unsigned int t=0; t<NB_EXEC;t++){
        
        res_par_standard = 0.0; 
        #pragma omp parallel for reduction(+:res_par_standard)
        for (unsigned int j=0; j<n;j++){
            res_par_standard += a[j]*b[j];
        }
        
    }
    clock_gettime(CLOCK_REALTIME,&end_par_standard);  

    Time_par_standard += ((end_par_standard.tv_sec - start_par_standard.tv_sec) * 1000000000 + (end_par_standard.tv_nsec - start_par_standard.tv_nsec) );

    ////////////////////////////////////////////////////////////////////
    /////////////////// PARALLEL COMMON DOT PRODUCT ////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_common, end_par_common;
    res_par_common = 0.0;
        
    clock_gettime(CLOCK_REALTIME,&start_par_common);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_par_common = par_common_dot_prod(a,b,n,1,1,nb_threads);
    }
    clock_gettime(CLOCK_REALTIME,&end_par_common);  

    Time_par_common += ((end_par_common.tv_sec - start_par_common.tv_sec) * 1000000000 + (end_par_common.tv_nsec - start_par_common.tv_nsec) );

   

    
    // Print results
    // mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    // printf ("\n PAR STANDARD DOT PRODUCT : \n%.50f \n", res_par_standard);
    // printf ("\n PAR COMMON DOT PRODUCT : \n%.50f \n", res_par_common);
   
    // Error
    mpfr_t tmp,tmp2;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    
     // Error
    mpfr_t test;
    mpfr_init2(test, P);
    mpfr_set_d(test, 0, MPFR_RNDN);
   

    mpfr_sub_d(tmp2,res_mpfr,res_par_standard,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp2,tmp2,MPFR_RNDN);
    mpfr_add(Err_par_standard, Err_par_standard,tmp2,MPFR_RNDN);

    mpfr_sub_d(tmp,res_mpfr,res_par_common,MPFR_RNDN);
    mpfr_div(tmp,tmp,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_par_common, Err_par_common,tmp,MPFR_RNDN);

    }

    // Time par standard
    Time_par_standard = Time_par_standard / (nb_gen*NB_EXEC);
    // printf("TIME PAR STANDARD DOT PRODUCT : %.45f \n",Time_par_standard);

    // Time par common
    Time_par_common =Time_par_common / (nb_gen*NB_EXEC);
    // printf("TIME PAR COMMON DOT PRODUCT : %.45f \n",Time_par_common);

    Time[0] = Time_par_standard;
    Time[1] = Time_par_common;

    mpfr_div_si(Err_par_standard,Err_par_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_common,Err_par_common,nb_gen,MPFR_RNDN);
    mpfr_set(Error[0], Err_par_standard, MPFR_RNDN);
    mpfr_set(Error[1], Err_par_common, MPFR_RNDN);
}




///////////////////////////////////////////// COND ////////////////////////////////////////////////////////////////////////






template
void compare_dot_prod_cond<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Error_standard, std::vector<double> &Error_common,std::vector<double> &Error_par_standard, std::vector<double> &Error_par_common, std::vector<double> &Error_mkl, std::vector<double> &Error_blaspp, int q, int nb, int nb_threads);


/// @brief give error according to the cond
/// @tparam T 
/// @param n size
/// @param required_cond cond
/// @param nb_gen nb of gen
/// @param sum sum
/// @param Error_standard output
/// @param Error_common output
/// @param Error_par_standard output
/// @param Error_par_common output
/// @param Error_mkl output
/// @param Error_blaspp output
/// @param q position of program
/// @param nb position into cond vector
template < class T >
void compare_dot_prod_cond(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Error_standard, std::vector<T> &Error_common, std::vector<T> &Error_par_standard, std::vector<T> &Error_par_common, std::vector<T> &Error_mkl, std::vector<T> &Error_blaspp, int q, int nb, int nb_threads){

    // Error
    mpfr_t Err_standard,Err_common,Err_par_standard,Err_par_common,Err_mkl,Err_blaspp;
    mpfr_init2(Err_standard, P);
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_mkl, P);
    mpfr_init2(Err_blaspp, P);
    mpfr_set_d(Err_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_mkl, 0, MPFR_RNDN);
    mpfr_set_d(Err_blaspp, 0, MPFR_RNDN);

    mpfr_init2(Err_par_standard, P);
    mpfr_init2(Err_par_common, P);
    mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_common, 0, MPFR_RNDN);


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

    double res_standard,res_common,res_par_standard,res_par_common,res_mkl,res_blaspp;

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
    //////////////////////// STANDARD DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_standard = 0;
    for (unsigned int j=0; j<n;j++){
        res_standard += a[j]*b[j];
    }


    ////////////////////////////////////////////////////////////////////
    //////////////////////// COMMON DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////


    res_common = 0.0;
   
    res_common = common_dot_prod(a,b,n,1,1);


    ////////////////////////////////////////////////////////////////////
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    res_par_standard = 0.0; 
    #pragma omp parallel for reduction(+:res_par_standard)
    for (unsigned int j=0; j<n;j++){
            res_par_standard += a[j]*b[j];
    }
        
    ////////////////////////////////////////////////////////////////////
    /////////////////// PARALLEL COMMON DOT PRODUCT ////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_common, end_par_common;
    res_par_common = 0.0;
        
    res_par_common = par_common_dot_prod(a,b,n,1,1,nb_threads);
    


    ////////////////////////////////////////////////////////////////////
    ///////////////////// MKL DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_mkl = 0.0;

    double *abis;
    abis = (double *) malloc(n*sizeof(double)); 
    double *bbis;
    bbis = (double *) malloc(n*sizeof(double)); 
    for (unsigned int i = 0; i<n;i++){
        abis[i] = a[i];
        bbis[i] = b[i];
    }

    res_mkl = cblas_ddot(n,abis,1,bbis,1);

    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// BLASPP DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_blaspp = 0.0;
    
    res_blaspp = blas::dot(n,abis,1,bbis,1);
    
    
    
    // Print results
    // mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // printf ("\n SEQUENTIAL COMMON DOT PRODUCT : \n%.50f \n", res_common);
       // printf ("\n PARALLEL DOT PRODUCT : \n%.50f \n", res_par_standard);
    // printf ("\n PARALLEL COMMON DOT PRODUCT : \n%.50f \n", res_par_common);
    // printf ("\n SEQUENTIAL MKL : \n%.50f \n", res_mkl);  
    // printf ("\n SEQUENTIAL BLASPP : \n%.50f \n\n", res_blaspp);   

    // Error
    mpfr_t tmp,tmp2,tmp3,tmp4,tmp5,tmp6;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);
    mpfr_init2(tmp4, P);
    mpfr_init2(tmp5, P);
    mpfr_init2(tmp6, P);

    mpfr_sub_d(tmp4,res_mpfr,res_standard,MPFR_RNDN);
    mpfr_div(tmp4,tmp4,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp4,tmp4,MPFR_RNDN);
    mpfr_add(Err_standard, Err_standard,tmp4,MPFR_RNDN);

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

     mpfr_sub_d(tmp5,res_mpfr,res_par_standard,MPFR_RNDN);
    mpfr_div(tmp5,tmp5,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp5,tmp5,MPFR_RNDN);
    mpfr_add(Err_par_standard, Err_par_standard,tmp5,MPFR_RNDN);

    mpfr_sub_d(tmp6,res_mpfr,res_par_common,MPFR_RNDN);
    mpfr_div(tmp6,tmp6,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp6,tmp6,MPFR_RNDN);
    mpfr_add(Err_par_common, Err_par_common,tmp6,MPFR_RNDN);

    mpfr_clear(tmp);
    mpfr_clear(tmp2);
    mpfr_clear(tmp3);
    mpfr_clear(tmp4);
    mpfr_clear(tmp5);
    mpfr_clear(tmp6);


    mpfr_div_si(Err_standard,Err_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_common,Err_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_standard,Err_par_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_common,Err_par_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_mkl,Err_mkl,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_blaspp,Err_blaspp,nb_gen,MPFR_RNDN);

    int indice = nb*nb_gen + l;

     // Save result
    Error_standard[indice] = mpfr_get_d(Err_standard,MPFR_RNDN);
    Error_common[indice] = mpfr_get_d(Err_common,MPFR_RNDN);
    Error_par_standard[indice] = mpfr_get_d(Err_par_standard,MPFR_RNDN);
    Error_par_common[indice] = mpfr_get_d(Err_par_common,MPFR_RNDN);
    Error_mkl[indice] = mpfr_get_d(Err_mkl,MPFR_RNDN);
    Error_blaspp[indice] = mpfr_get_d(Err_blaspp,MPFR_RNDN);


    }

    
}











template
void compare_dot_prod_thread<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int q, int nb_threads);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param sum 
/// @param Time Output size 6
/// @param Error Output size 6
/// @param nb_threads Number of threads for parallel
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
template < class T >
void compare_dot_prod_thread(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int q,int nb_threads){

    // Error
    mpfr_t Err_standard,Err_common,Err_par_standard,Err_par_common,Err_mkl,Err_blaspp;
    mpfr_init2(Err_standard, P);
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_par_standard, P);
    mpfr_init2(Err_par_common, P);
    mpfr_init2(Err_mkl, P);
    mpfr_init2(Err_blaspp, P);
    mpfr_set_d(Err_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_mkl, 0, MPFR_RNDN);
    mpfr_set_d(Err_blaspp, 0, MPFR_RNDN);

    // Time 
    double Time_mpfr,Time_standard,Time_common,Time_par_standard,Time_par_common,Time_mkl,Time_blaspp;
    Time_mpfr = 0;
    Time_standard = 0;
    Time_common = 0;
    Time_par_standard = 0;
    Time_par_common = 0;
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

    double res_standard,res_common,res_par_standard,res_par_common,res_mkl,res_blaspp;

    //////////////////////////////////////////////////////////////////
    //////////////////////// MPFR_dot product ////////////////////////
    //////////////////////////////////////////////////////////////////
    
    mpfr_t res_mpfr;
    struct timespec start_mpfr, end_mpfr;
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
    
    clock_gettime(CLOCK_REALTIME,&start_mpfr);
    dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);
    clock_gettime(CLOCK_REALTIME,&end_mpfr); 
    Time_mpfr += ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec)); 

    for (unsigned int i = 0; i < n; i++){
        mpfr_clear(a_mpfr[i]);
        mpfr_clear(b_mpfr[i]);
    } 

    ////////////////////////////////////////////////////////////////////
    //////////////////////// STANDARD DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_standard, end_standard;
        
    clock_gettime(CLOCK_REALTIME,&start_standard);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_standard = 0.0;
        for (unsigned int j=0; j<n;j++){
            res_standard += a[j]*b[j];
        }
    }
    clock_gettime(CLOCK_REALTIME,&end_standard);  

    Time_standard += ((end_standard.tv_sec - start_standard.tv_sec) * 1000000000 + (end_standard.tv_nsec - start_standard.tv_nsec) );

    ////////////////////////////////////////////////////////////////////
    //////////////////////// COMMON DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_common, end_common;
    res_common = 0.0;
        
    clock_gettime(CLOCK_REALTIME,&start_common);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_common = 0.0;
        common_dot_prod_thread(a,b,n,1,1,res_common);
    }
    clock_gettime(CLOCK_REALTIME,&end_common);  

    Time_common += ((end_common.tv_sec - start_common.tv_sec) * 1000000000 + (end_common.tv_nsec - start_common.tv_nsec) );


    ////////////////////////////////////////////////////////////////////
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_standard, end_par_standard;

    omp_set_num_threads(nb_threads);
    clock_gettime(CLOCK_REALTIME,&start_par_standard);
    for (unsigned int t=0; t<NB_EXEC;t++){
        
        res_par_standard = 0.0; 
        #pragma omp parallel for reduction(+:res_par_standard)
        for (unsigned int j=0; j<n;j++){
            res_par_standard += a[j]*b[j];
        }
        
    }
    clock_gettime(CLOCK_REALTIME,&end_par_standard);  

    Time_par_standard += ((end_par_standard.tv_sec - start_par_standard.tv_sec) * 1000000000 + (end_par_standard.tv_nsec - start_par_standard.tv_nsec) );

    ////////////////////////////////////////////////////////////////////
    /////////////////// PARALLEL COMMON DOT PRODUCT ////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_common, end_par_common;
    res_par_common = 0.0;
        
    clock_gettime(CLOCK_REALTIME,&start_par_common);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_par_common = par_common_dot_prod(a,b,n,1,1,nb_threads);
    }
    clock_gettime(CLOCK_REALTIME,&end_par_common);  

    Time_par_common += ((end_par_common.tv_sec - start_par_common.tv_sec) * 1000000000 + (end_par_common.tv_nsec - start_par_common.tv_nsec) );


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

    clock_gettime(CLOCK_REALTIME,&start_mkl);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_mkl = cblas_ddot(n,amkl,1,bmkl,1);

    }
    clock_gettime(CLOCK_REALTIME,&end_mkl); 

    Time_mkl += ((end_mkl.tv_sec - start_mkl.tv_sec) * 1000000000 + (end_mkl.tv_nsec - start_mkl.tv_nsec));

    
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
    
    clock_gettime(CLOCK_REALTIME,&start_blaspp);
    for (unsigned int t=0; t<NB_EXEC;t++){
        res_blaspp = blas::dot(n,app,1,bpp,1);
    }
    clock_gettime(CLOCK_REALTIME,&end_blaspp); 

    Time_blaspp += ((end_blaspp.tv_sec - start_blaspp.tv_sec) * 1000000000 + (end_blaspp.tv_nsec - start_blaspp.tv_nsec));

    
    // Print results
    // mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // printf ("\n SEQUENTIAL COMMON DOT PRODUCT : \n%.50f \n", res_common);
    // printf ("\n SEQUENTIAL MKL : \n%.50f \n", res_mkl);  
    // printf ("\n SEQUENTIAL BLASPP : \n%.50f \n\n", res_blaspp);   

    // Error
    mpfr_t tmp,tmp2,tmp3,tmp4,tmp5, tmp6;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);
    mpfr_init2(tmp4, P);
    mpfr_init2(tmp5, P);
    mpfr_init2(tmp6, P);


    mpfr_sub_d(tmp4,res_mpfr,res_standard,MPFR_RNDN);
    mpfr_div(tmp4,tmp4,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp4,tmp4,MPFR_RNDN);
    mpfr_add(Err_standard, Err_standard,tmp4,MPFR_RNDN);

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

    mpfr_sub_d(tmp5,res_mpfr,res_par_standard,MPFR_RNDN);
    mpfr_div(tmp5,tmp5,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp5,tmp5,MPFR_RNDN);
    mpfr_add(Err_par_standard, Err_par_standard,tmp5,MPFR_RNDN);

    mpfr_sub_d(tmp6,res_mpfr,res_par_common,MPFR_RNDN);
    mpfr_div(tmp6,tmp6,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp6,tmp6,MPFR_RNDN);
    mpfr_add(Err_par_common, Err_par_common,tmp6,MPFR_RNDN);

    mpfr_clear(tmp);
    mpfr_clear(tmp2);
    mpfr_clear(tmp3);
    mpfr_clear(tmp4);
    mpfr_clear(tmp5);
    mpfr_clear(tmp6);

    }
    // Time mpfr
    Time_mpfr = Time_mpfr / nb_gen;
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time standard
    Time_standard = Time_standard / (nb_gen*NB_EXEC);
    // printf("TIME STANDARD DOT PRODUCT : %.45f \n",Time_standard);

    // Time common
    Time_common =Time_common / (nb_gen*NB_EXEC);
    // printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);


     // Time par standard
    Time_par_standard = Time_par_standard / (nb_gen*NB_EXEC);
    // printf("TIME PAR STANDARD DOT PRODUCT : %.45f \n",Time_par_standard);

    // Time par common
    Time_par_common =Time_par_common / (nb_gen*NB_EXEC);
    // printf("TIME PAR COMMON DOT PRODUCT : %.45f \n",Time_par_common);

    // Time MKL
    Time_mkl = Time_mkl / (nb_gen*NB_EXEC);
    // printf("TIME MKL : %.45f \n",Time_mkl);

     // Time blaspp
    Time_blaspp = Time_blaspp / (nb_gen*NB_EXEC);
    // printf("TIME BLASPP : %.45f \n",Time_blaspp);


    Time[0] = Time_mpfr;
    Time[1] = Time_standard;
    Time[2] = Time_common;
    Time[3] = Time_par_standard;
    Time[4] = Time_par_common;
    Time[5] = Time_mkl;
    Time[6] = Time_blaspp;

    mpfr_div_si(Err_standard,Err_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_common,Err_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_standard,Err_par_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_common,Err_par_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_mkl,Err_mkl,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_blaspp,Err_blaspp,nb_gen,MPFR_RNDN);

    mpfr_set_d(Error[0], 0, MPFR_RNDN);
    mpfr_set(Error[1], Err_standard, MPFR_RNDN);
    mpfr_set(Error[2], Err_common, MPFR_RNDN);
    mpfr_set(Error[3], Err_par_standard, MPFR_RNDN);
    mpfr_set(Error[4], Err_par_common, MPFR_RNDN);
    mpfr_set(Error[5], Err_mkl, MPFR_RNDN);
    mpfr_set(Error[6], Err_blaspp, MPFR_RNDN);

    // mpfr_clear(Err_standard);
    // mpfr_clear(Err_common);
    // mpfr_clear(Err_par_common);
    // mpfr_clear(Err_standard);
    // mpfr_clear(Err_mkl);
    // mpfr_clear(Err_blaspp);
}