#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "../../include/parallelisation.h"
#include <thread>
#include "matplotlibcpp.h"

namespace plt = matplotlibcpp;
using namespace std;

#define P 4000
#define NB_EXEC 20

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////// FONCTION /////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param nb_gen number of vector which will be generate
/// @param Time Output size 6
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
/// @param nb_threads Number of threads for parallel
template < class T >
void compare(int n, int nb_gen, std::vector<T> &Time, int q,int nb_threads){


    // Time 
    double Time_mpfr;
    Time_mpfr = 0;

    double Min_Time_standard, Min_Time_par_standard ,Min_Time_rare_blas, Min_Time_par_rare_blas,Min_Time_ozaki, Min_Time_par_ozaki;
    Min_Time_standard = 0;
    Min_Time_par_standard = 0;
    Min_Time_rare_blas = 0;
    Min_Time_par_rare_blas = 0;
    Min_Time_ozaki = 0;
    Min_Time_par_ozaki = 0;

    double Final_Min_Time_standard, Final_Min_Time_par_standard, Final_Min_Time_rare_blas, Final_Min_Time_par_rare_blas, Final_Min_Time_ozaki, Final_Min_Time_par_ozaki;
    Final_Min_Time_standard = 0;
    Final_Min_Time_par_standard = 0;
    Final_Min_Time_rare_blas = 0;
    Final_Min_Time_par_rare_blas = 0;
    Final_Min_Time_ozaki = 0;
    Final_Min_Time_par_ozaki = 0;

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
    double res_standard, res_par_standard, res_rare_blas, res_par_rare_blas, res_ozaki, res_par_ozaki;

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

    struct timespec Min_start_standard, Min_end_standard;
    double time_tmp;
    // Cache warmup 
    res_standard = 0.0;
    for (unsigned int j=0; j<n;j++){
        res_standard += a[j]*b[j];
    }
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
    Final_Min_Time_standard += Min_Time_standard;


    ////////////////////////////////////////////////////////////////////
    ////////////////// PARALLEL STANDARD DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec Min_start_par_standard, Min_end_par_standard;

    omp_set_num_threads(nb_threads);
    

    res_par_standard = 0.0; 
    #pragma omp parallel for reduction(+:res_par_standard)   // static    dynamic      guided     auto     runtime
    for (unsigned int j=0; j<n;j++){
        res_par_standard += a[j]*b[j];
    }

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
    Final_Min_Time_par_standard += Min_Time_par_standard;
    
    
    ////////////////////////////////////////////////////////////////////
    ///////////////// SERIAL RARE BLAS DOT PRODUCT /////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec Min_start_rare_blas, Min_end_rare_blas;
    res_rare_blas = 0.0;
    // Cache warmup 
    res_rare_blas = Rare_blas_dot_prod_online(a,b,n);

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
    Final_Min_Time_rare_blas += Min_Time_rare_blas;

    ////////////////////////////////////////////////////////////////////
    ///////////////// PARALLEL RARE BLAS DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_rare_blas, end_par_rare_blas,Min_start_par_rare_blas, Min_end_par_rare_blas;
    res_par_rare_blas = 0.0;
    // Cache warmup
    res_par_rare_blas = Par_rare_blas_dot_prod(a,b,n,nb_threads);
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
    Final_Min_Time_par_rare_blas += Min_Time_par_rare_blas;

    ////////////////////////////////////////////////////////////////////
    ///////////////// SERIAL OZAKI DOT PRODUCT /////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec Min_start_ozaki, Min_end_ozaki;
    res_ozaki = 0.0;
    // Cache warmup 
    res_ozaki = Ozaki(a,b,n,nb_threads);

    for (unsigned int t=0; t<NB_EXEC;t++){

        clock_gettime(CLOCK_REALTIME,&Min_start_ozaki); 

        res_ozaki = Ozaki(a,b,n,nb_threads);

        clock_gettime(CLOCK_REALTIME,&Min_end_ozaki); 
        
        time_tmp = ((Min_end_ozaki.tv_sec - Min_start_ozaki.tv_sec) * 1000000000 + (Min_end_ozaki.tv_nsec - Min_start_ozaki.tv_nsec) );
        if (t==0){
            Min_Time_ozaki = time_tmp;
        }
        if (time_tmp < Min_Time_ozaki){
            Min_Time_ozaki = time_tmp;
        }

    }
    Final_Min_Time_ozaki += Min_Time_ozaki;

    ////////////////////////////////////////////////////////////////////
    ///////////////// PARALLEL RARE BLAS DOT PRODUCT ///////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_par_ozaki, end_par_ozaki,Min_start_par_ozaki, Min_end_par_ozaki;
    res_par_ozaki = 0.0;
    // Cache warmup
    res_par_ozaki = Ozaki(a,b,n,nb_threads);
    for (unsigned int t=0; t<NB_EXEC;t++){

        clock_gettime(CLOCK_REALTIME,&Min_start_par_ozaki); 

        res_par_ozaki = Ozaki(a,b,n,nb_threads);

        clock_gettime(CLOCK_REALTIME,&Min_end_par_ozaki); 
        
        time_tmp = ((Min_end_par_ozaki.tv_sec - Min_start_par_ozaki.tv_sec) * 1000000000 + (Min_end_par_ozaki.tv_nsec - Min_start_par_ozaki.tv_nsec) );
        if (t==0){
            Min_Time_par_ozaki = time_tmp;
        }
        if (time_tmp < Min_Time_par_ozaki){
            Min_Time_par_ozaki = time_tmp;
        }

    }
    Final_Min_Time_par_ozaki += Min_Time_par_ozaki;



    
    // Print results
    // mpfr_printf ("\n --------------------------------- \n SEQUENTIAL CORRECT ROUNDING : \n %.30Rg \n --------------------------------- \n", res_mpfr);
    // printf ("\n STANDARD DOT PRODUCT : \n%.50f \n", res_standard);
    // printf ("\n PARALLEL STANDARD DOT PRODUCT : \n%.50f \n", res_par_standard);
    // printf ("\n SEQUENTIAL RARE : \n%.50f \n", res_rare_blas);  
    // printf ("\n PARALLEL RARE : \n%.50f \n\n", res_par_rare_blas);   
    // printf ("\n SEQUENTIAL OZAKI : \n%.50f \n", res_ozaki);  
    // printf ("\n PARALLEL OZAKI : \n%.50f \n\n", res_par_ozaki);   

    }
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

    // Final_Min_Time rare blas
    Final_Min_Time_ozaki = Final_Min_Time_ozaki / (nb_gen);
    // printf("Final_Min_Time OZAKI : %.45f \n",Final_Min_Time_ozaki);

     // Final_Min_Time par rare blas
    Final_Min_Time_par_ozaki = Final_Min_Time_par_ozaki/ (nb_gen);
    // printf("Final_Min_Time PARALLEL OZAKI : %.45f \n",Final_Min_Time_par_ozaki);


    // Min time
    Time[0] = Time_mpfr;
    Time[1] = Final_Min_Time_standard;
    Time[2] = Final_Min_Time_par_standard;
    Time[3] = Final_Min_Time_rare_blas;
    Time[4] = Final_Min_Time_par_rare_blas;
    Time[5] = Final_Min_Time_ozaki;
    Time[6] = Final_Min_Time_par_ozaki;
}



////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////// MAIN ///////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


int main() {
    int nb_gen = 5;
    int sz = 7;
    class std::vector<double> Time(sz);

    // Time / Size
    int sz_time = 14;
    // int sz_time = 1;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_par_standard(sz_time);
    class std::vector<double> Time_rare_blas(sz_time);
    class std::vector<double> Time_par_rare_blas(sz_time);
    class std::vector<double> Time_ozaki(sz_time);
    class std::vector<double> Time_par_ozaki(sz_time);

    VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000}; 

    // VSize = {175000};

    // VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};


    int i = 0;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf(" ___________ SIZE = %.20f ________________",*k);
        // Exec dot prod
        compare(*k,nb_gen,Time,3,8);
      
        // Save result
        Time_standard[i] = Time[1];
        Time_par_standard[i] = Time[2];
        Time_rare_blas[i] = Time[3];
        Time_par_rare_blas[i] = Time[4];
        Time_ozaki[i] = Time[5];
        Time_par_ozaki[i] = Time[6];

        i += 1;
    }

    int a;
    printf("\nVSize = \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",VSize[a]);
        }
        else{
            printf("%.10f, ",VSize[a]);
        }
    }
    printf("};\n");

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

     printf("\nTime_ozaki = \n {");
    for (a=0; a<sz_time;a++){
        if(a == sz_time-1){
            printf("%.10f",Time_ozaki[a]);
        }
        else{
            printf("%.10f, ",Time_ozaki[a]);
        }
    }
    printf("};\n");

    // printf("\nTime_par_ozaki = \n {");
    // for (a=0; a<sz_time;a++){
    //     if(a == sz_time-1){
    //         printf("%.10f",Time_par_ozaki[a]);
    //     }
    //     else{
    //         printf("%.10f, ",Time_par_ozaki[a]);
    //     }
    // }
    // printf("};\n");


    return 0;
}