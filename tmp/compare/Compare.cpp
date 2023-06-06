#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "../../include/parallelisation.h"
#include <thread>


using namespace std;

#define P 4000
#define NB_EXEC 20

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////// FONCTION /////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

template 
void compare<double>(int n,double required_cond, int nb_gen, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int q, int nb_threads);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param sum 
/// @param Time Output size 4
/// @param Error Output size 4
/// @param nb_threads Number of threads for parallel
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
template < class T >
void compare(int n,double required_cond, int nb_gen,  double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int q,int nb_threads){

    // Error
    mpfr_t Err_standard, Err_par_standard, Err_rare_blas,Err_par_rare_blas;
    mpfr_init2(Err_standard, P);
    mpfr_init2(Err_par_standard, P);
    mpfr_init2(Err_rare_blas, P);
    mpfr_init2(Err_par_rare_blas, P);
    mpfr_set_d(Err_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_standard, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas, 0, MPFR_RNDN);
    mpfr_set_d(Err_par_rare_blas, 0, MPFR_RNDN);

    // Time 
    double Time_mpfr,Time_standard, Time_par_standard, Time_rare_blas, Time_par_rare_blas;
    Time_mpfr = 0;
    Time_standard = 0;
    Time_par_standard = 0;
    Time_rare_blas = 0;
    Time_par_rare_blas = 0;

    double Min_Time_standard, Min_Time_par_standard ,Min_Time_rare_blas, Min_Time_par_rare_blas;
    Min_Time_standard = 0;
    Min_Time_par_standard = 0;
    Min_Time_rare_blas = 0;
    Min_Time_par_rare_blas = 0;


    double Final_Min_Time_standard, Final_Min_Time_par_standard, Final_Min_Time_rare_blas, Final_Min_Time_par_rare_blas;
    Final_Min_Time_standard = 0;
    Final_Min_Time_par_standard = 0;
    Final_Min_Time_rare_blas = 0;
    Final_Min_Time_par_rare_blas = 0;

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
    double res_standard, res_par_standard, res_rare_blas, res_par_rare_blas;

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
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_standard, end_par_standard, Min_start_par_standard, Min_end_par_standard;

    omp_set_num_threads(nb_threads);
    

    res_par_standard = 0.0; 
    #pragma omp parallel for reduction(+:res_par_standard)   // static    dynamic      guided     auto     runtime
    for (unsigned int j=0; j<n;j++){
        res_par_standard += a[j]*b[j];
    }

    clock_gettime(CLOCK_REALTIME,&start_par_standard);
    for (unsigned int t=0; t<NB_EXEC;t++){
        
        res_par_standard = 0.0; 
        clock_gettime(CLOCK_REALTIME,&Min_start_par_standard);
        #pragma omp parallel for reduction(+:res_par_standard) 
        for (unsigned int j=0; j<n;j++){
            res_par_standard += a[j]*b[j];
        }
        clock_gettime(CLOCK_REALTIME,&Min_end_par_standard);
        time_tmp = ((Min_end_par_standard.tv_sec - Min_start_par_standard.tv_sec) * 1000000000 + (Min_end_par_standard.tv_nsec - Min_start_par_standard.tv_nsec) );
         if (t==0){
            Min_Time_par_standard = time_tmp;
        }
        if (time_tmp < Min_Time_par_standard){
            Min_Time_par_standard = time_tmp;
        }
    }
    clock_gettime(CLOCK_REALTIME,&end_par_standard); 
    Final_Min_Time_par_standard += Min_Time_par_standard;
    Time_par_standard += ((end_par_standard.tv_sec - start_par_standard.tv_sec) * 1000000000 + (end_par_standard.tv_nsec - start_par_standard.tv_nsec) );
    
    
    ////////////////////////////////////////////////////////////////////
    ///////////////// SERIAL RARE BLAS DOT PRODUCT /////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_rare_blas, end_rare_blas, Min_start_rare_blas, Min_end_rare_blas;
    res_rare_blas = 0.0;
    // Cache warmup 
    res_rare_blas = Rare_blas_dot_prod_online(a,b,n);

    clock_gettime(CLOCK_REALTIME,&start_rare_blas);
    for (unsigned int t=0; t<NB_EXEC;t++){

        clock_gettime(CLOCK_REALTIME,&Min_start_rare_blas); 

        res_rare_blas = Rare_blas_dot_prod_online(a,b,n);

        clock_gettime(CLOCK_REALTIME,&Min_end_rare_blas); 
        
        time_tmp = ((Min_end_rare_blas.tv_sec - Min_start_rare_blas.tv_sec) * 1000000000 + (Min_end_rare_blas.tv_nsec - Min_start_rare_blas.tv_nsec) );
        if (t==0){
            Min_Time_rare_blas = time_tmp;
        }
        if (time_tmp < Min_Time_rare_blas){
            Min_Time_rare_blas = time_tmp;
        }

    }
    clock_gettime(CLOCK_REALTIME,&end_rare_blas); 
    Final_Min_Time_rare_blas += Min_Time_rare_blas;
    Time_rare_blas += ((end_rare_blas.tv_sec - start_rare_blas.tv_sec) * 1000000000 + (end_rare_blas.tv_nsec - start_rare_blas.tv_nsec));

    ////////////////////////////////////////////////////////////////////
    ///////////////// PARALLEL RARE BLAS DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_rare_blas, end_par_rare_blas,Min_start_par_rare_blas, Min_end_par_rare_blas;
    res_par_rare_blas = 0.0;
    // Cache warmup
    res_par_rare_blas = Par_rare_blas_dot_prod(a,b,n,nb_threads);
    clock_gettime(CLOCK_REALTIME,&start_par_rare_blas);
    for (unsigned int t=0; t<NB_EXEC;t++){

        clock_gettime(CLOCK_REALTIME,&Min_start_par_rare_blas); 

        res_par_rare_blas = Par_rare_blas_dot_prod(a,b,n,nb_threads);

        clock_gettime(CLOCK_REALTIME,&Min_end_par_rare_blas); 
        
        time_tmp = ((Min_end_par_rare_blas.tv_sec - Min_start_par_rare_blas.tv_sec) * 1000000000 + (Min_end_par_rare_blas.tv_nsec - Min_start_par_rare_blas.tv_nsec) );
        if (t==0){
            Min_Time_par_rare_blas = time_tmp;
        }
        if (time_tmp < Min_Time_par_rare_blas){
            Min_Time_par_rare_blas = time_tmp;
        }

    }
    clock_gettime(CLOCK_REALTIME,&end_par_rare_blas); 
    Final_Min_Time_par_rare_blas += Min_Time_par_rare_blas;
    Time_par_rare_blas += ((end_par_rare_blas.tv_sec - start_par_rare_blas.tv_sec) * 1000000000 + (end_par_rare_blas.tv_nsec - start_par_rare_blas.tv_nsec));

    
    // Print results
    // mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // printf ("\n PARALLEL STANDARD DOT PRODUCT : \n%.50f \n", res_par_standard);
    // printf ("\n SEQUENTIAL RARE : \n%.50f \n", res_rare_blas);  
    // printf ("\n PARALLEL RARE : \n%.50f \n\n", res_par_rare_blas);   

    // Error
    mpfr_t tmp,tmp2,tmp3,tmp4;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);
    mpfr_init2(tmp4, P);


    mpfr_sub_d(tmp,res_mpfr,res_standard,MPFR_RNDN);
    mpfr_div(tmp,tmp,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_standard, Err_standard,tmp,MPFR_RNDN);

    mpfr_sub_d(tmp2,res_mpfr,res_par_standard,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp2,tmp2,MPFR_RNDN);
    mpfr_add(Err_par_standard, Err_par_standard,tmp2,MPFR_RNDN);


    mpfr_sub_d(tmp3,res_mpfr,res_rare_blas,MPFR_RNDN);
    mpfr_div(tmp3,tmp2,res_mpfr,MPFR_RNDN);
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

    }
    // Time mpfr
    Time_mpfr = Time_mpfr / nb_gen;
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time standard
    Time_standard = Time_standard / (nb_gen*NB_EXEC);
    // printf("TIME STANDARD DOT PRODUCT : %.45f \n",Time_standard);

    // Time par standard
    Time_par_standard = Time_par_standard / (nb_gen*NB_EXEC);
    // printf("TIME PAR STANDARD DOT PRODUCT : %.45f \n",Time_par_standard);


    // Time rare blas
    Time_rare_blas = Time_rare_blas / (nb_gen*NB_EXEC);
    // printf("TIME RARE BLAS : %.45f \n",Time_rare_blas);

     // Time par rare blas
    Time_par_rare_blas = Time_par_rare_blas / (nb_gen*NB_EXEC);
    // printf("TIME PARALLEL RARE BLAS : %.45f \n",Time_par_rare_blas);



    // Final_Min_Time standard
    Final_Min_Time_standard = Final_Min_Time_standard / (nb_gen);
    // printf("Final_Min_Time STANDARD DOT PRODUCT : %.45f \n",Final_Min_Time_standard);

    // Final_Min_Time par_standard
    Final_Min_Time_par_standard = Final_Min_Time_par_standard / (nb_gen);
    // printf("Final_Min_Time STANDARD DOT PRODUCT : %.45f \n",Final_Min_Time_par_standard);


    // Final_Min_Time rare blas
    Final_Min_Time_rare_blas = Final_Min_Time_rare_blas / (nb_gen);
    // printf("Final_Min_Time RARE BLAS : %.45f \n",Final_Min_Time_rare_blas);

     // Final_Min_Time par rare blas
    Final_Min_Time_par_rare_blas = Final_Min_Time_par_rare_blas / (nb_gen);
    // printf("Final_Min_Time PARALLEL RARE BLAS : %.45f \n",Final_Min_Time_par_rare_blas);


    // Average time

    // Time[0] = Time_mpfr;
    // Time[1] = Time_standard;
    // Time[2] = Time_par_standard;
    // Time[3] = Time_rare_blas;
    // Time[4] = Time_par_rare_blas;


    // Min time
    Time[0] = Time_mpfr;
    Time[1] = Final_Min_Time_standard;
    Time[2] = Final_Min_Time_par_standard;
    Time[3] = Final_Min_Time_rare_blas;
    Time[4] = Final_Min_Time_par_rare_blas;

    mpfr_div_si(Err_standard,Err_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_standard,Err_par_standard,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_rare_blas,Err_rare_blas,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_par_rare_blas,Err_par_rare_blas,nb_gen,MPFR_RNDN);

    mpfr_set_d(Error[0], 0, MPFR_RNDN);
    mpfr_set(Error[1], Err_standard, MPFR_RNDN);
    mpfr_set(Error[2], Err_par_standard, MPFR_RNDN);
    mpfr_set(Error[3], Err_rare_blas, MPFR_RNDN);
    mpfr_set(Error[4], Err_par_rare_blas, MPFR_RNDN);

    // mpfr_clear(Err_standard);
    // mpfr_clear(Err_common);
    // mpfr_clear(Err_par_common);
    // mpfr_clear(Err_standard);
    // mpfr_clear(Err_rare_blas);
    // mpfr_clear(Err_par_rare_blas);
}





int main() {
    int nb_gen = 5;
    double sum = 200; 
    double cond = 100;
    int sz = 5;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }


    // Time / Size
    int sz_time = 20;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_rare_blas(sz_time);
    class std::vector<double> Time_par_rare_blas(sz_time);

    VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};


    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf(" ___________ SIZE = %.20f ________________",*k);
        // Exec dot prod
        compare(*k, cond, nb_gen,sum,Time,Error,3,8);

        // Gbytes / s
        // double qtt;
        // for (int j=1;j<7 ; j++) {
        //     qtt = *k * 2 * 8 ;
        //     Time[j] = qtt / Time[j] ;
        // }

        // Save result
        Time_standard[i] = Time[1];
        Time_par_standard[i] = Time[2];
        Time_rare_blas[i] = Time[3];
        Time_par_rare_blas[i] = Time[4];

        i += 1;
    }
    int a;
    printf("\nTime_standard = \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",Time_standard[a]);
        }
        else{
            printf("%.10f, ",Time_standard[a]);
        }
    }
    printf("};\n");

    printf("\nTime_par_standard = \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",Time_par_standard[a]);
        }
        else{
            printf("%.10f, ",Time_par_standard[a]);
        }
    }
    printf("};\n");

    printf("\nTime_rare_blas = \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",Time_rare_blas[a]);
        }
        else{
            printf("%.10f, ",Time_rare_blas[a]);
        }
    }
    printf("};\n");

    printf("\nTime_par_rare_blas = \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",Time_par_rare_blas[a]);
        }
        else{
            printf("%.10f, ",Time_par_rare_blas[a]);
        }
    }
    printf("};\n");


    return 0;
}