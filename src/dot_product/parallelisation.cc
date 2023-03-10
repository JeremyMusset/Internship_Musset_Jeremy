#include <cmath>
#include "../../include/parallelisation.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000
#define NB_EXEC 10

template
void par_dot_prod<double>(int n,double required_cond, int nb_gen, int nb_threads, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int q);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param nb_threads number of threads
/// @param sum 
/// @param Time Output
/// @param Error Output
/// @param q file position (main/X/ = 2   main/X/Y/ = 1)
template < class T >
void par_dot_prod(int n,double required_cond, int nb_gen, int nb_threads, double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int q){

    // Define c++ variables
    int n_remaining,nb_t_remaining, start_thread;

    // Variables
    int size;
    
       
    // Result
    class std::vector<double> result_common(nb_threads);
    class std::vector<double> result_rare_blas_hybrid(nb_threads);
    class std::vector<double> result_rare_blas_online(nb_threads);
    class std::vector<mpfr_t> result_mpfr(nb_threads);


    // Error
    mpfr_t Err_common,Err_rare_blas_hybrid,Err_rare_blas_online,Err_ozaki,Err_ex_blas;
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_rare_blas_hybrid, P);
    mpfr_init2(Err_rare_blas_online, P);
    mpfr_init2(Err_ozaki, P);
    mpfr_init2(Err_ex_blas, P);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas_hybrid, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas_online, 0, MPFR_RNDN);
    mpfr_set_d(Err_ozaki, 0, MPFR_RNDN);
    mpfr_set_d(Err_ex_blas, 0, MPFR_RNDN);
    
    // Time 
    double Time_mpfr,Time_common,Time_rare_blas_hybrid,Time_rare_blas_online;
    Time_mpfr = 0;
    Time_common = 0;
    Time_rare_blas_hybrid = 0;
    Time_rare_blas_online = 0;

    class std::vector<double> testa(n);
    class std::vector<double> testb(n);
    
    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){
        // printf("\n\n---------------------- DATA FILE N??%d ----------------------\n",l);

        //////////////////////////////////////////////////////////////////
        //////////////////////// Data importation ////////////////////////
        //////////////////////////////////////////////////////////////////
      
        class std::vector<double> vec;
        import_vec(vec,l,q); 
        omp_set_num_threads(nb_threads);
        int r = n % nb_threads; // reste de la division enti??re de n par x
        int s = n / nb_threads; // taille des sous-vecteurs

        #pragma omp parallel for 
        for (unsigned int k=0 ; k < nb_threads; k++){
            double res_common, res_rare_blas_hybrid,res_rare_blas_online;
    
            int id = omp_get_thread_num(); // identifiant du thread
            int start = id * s + (id < r ? id : r); // d??but du sous-vecteur
            int end = start + s + (id < r ? 1 : 0); // fin du sous-vecteur
            int size = end - start; // taille du sous-vecteur
                    
            class std::vector<double> a(size);
            class std::vector<double> b(size);

    
            for (unsigned int i=start; i<end ;i++){
                a[i-start] = vec[i+1];
                b[i-start] = vec[n+1+i]; 
            }


        //////////////////////////////////////////////////////////////////
        //////////////////////// MPFR_dot product ////////////////////////
        //////////////////////////////////////////////////////////////////

        mpfr_t res_mpfr;
        struct timespec start_mpfr, end_mpfr;
        mpfr_t a_mpfr[size], b_mpfr[size];
        for (unsigned int i = 0; i < size; i++){
            mpfr_init2(a_mpfr[i], P);
            mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
            mpfr_init2(b_mpfr[i], P);
            mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
        } 
        mpfr_init2(res_mpfr,P);
        mpfr_set_d(res_mpfr,0,MPFR_RNDN);

        clock_gettime(CLOCK_REALTIME,&start_mpfr);
        for (unsigned int t=0; t<NB_EXEC;t++){
            dot_prod_mpfr(size,a_mpfr,b_mpfr,res_mpfr);
        }
        clock_gettime(CLOCK_REALTIME,&end_mpfr); 
        mpfr_init2(result_mpfr[k], P);
        mpfr_set(result_mpfr[k],res_mpfr,MPFR_RNDN);

        Time_mpfr += ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec)); 

        
        ////////////////////////////////////////////////////////////////////
        //////////////////////// COMMON DOT PRODUCT ////////////////////////
        ////////////////////////////////////////////////////////////////////

        struct timespec start_common, end_common;
        res_common = 0.0;
        
        clock_gettime(CLOCK_REALTIME,&start_common);
        for (unsigned int t=0; t<NB_EXEC;t++){
            res_common = common_dot_prod(a,b,size,1,1);
        }
        result_common[k] = res_common;
        clock_gettime(CLOCK_REALTIME,&end_common);  

        Time_common += ((double)(end_common.tv_nsec - start_common.tv_nsec) );


        ////////////////////////////////////////////////////////////////////
        ///////////////////// RARE-BLAS DOT PRODUCT ////////////////////////
        ////////////////////////////////////////////////////////////////////

        struct timespec start_rare_blas_hybrid, end_rare_blas_hybrid,start_rare_blas_online, end_rare_blas_online;
        res_rare_blas_hybrid = 0.0;
        res_rare_blas_online = 0.0;

        clock_gettime(CLOCK_REALTIME,&start_rare_blas_hybrid);
        for (unsigned int t=0; t<NB_EXEC;t++){
            res_rare_blas_hybrid = Rare_blas_dot_prod_hybrid(a,b,size);
        }
        clock_gettime(CLOCK_REALTIME,&end_rare_blas_hybrid);     
        result_rare_blas_hybrid[k] = res_rare_blas_hybrid;

        clock_gettime(CLOCK_REALTIME,&start_rare_blas_online);
        for (unsigned int t=0; t<NB_EXEC;t++){
            res_rare_blas_online = Rare_blas_dot_prod_online(a,b,size);
        }
        clock_gettime(CLOCK_REALTIME,&end_rare_blas_online);     
        result_rare_blas_online[k] = res_rare_blas_online;

        Time_rare_blas_hybrid += ((double)(end_rare_blas_hybrid.tv_nsec - start_rare_blas_hybrid.tv_nsec));
        Time_rare_blas_online += ((double)(end_rare_blas_online.tv_nsec - start_rare_blas_online.tv_nsec));

    }

    // Regroup final results
    mpfr_t final_res_mpfr;
    mpfr_init2(final_res_mpfr,P);
    mpfr_set_d(final_res_mpfr, 0, MPFR_RNDN);
    // printf("\n");
    for (int i=0;i<nb_threads; i++) {
        mpfr_add(final_res_mpfr,final_res_mpfr,result_mpfr[i],MPFR_RNDN);
    }
    double final_res_common, final_res_rare_blas_hybrid,final_res_rare_blas_online;
    int L = 200;
    class std::vector<double> q1(L);
    class std::vector<double> q2(L);
     class std::vector<double> q3(L);
    final_res_common = FastSum(result_common,nb_threads,q1,L,0);
    final_res_rare_blas_hybrid = FastSum(result_rare_blas_hybrid,nb_threads,q2,L,0);
    final_res_rare_blas_online = FastSum(result_rare_blas_online,nb_threads,q3,L,0);
    
    // Print results
    // mpfr_printf ("\n PARALLEL CORRECT ROUNDING : \n%.41Rg \n", final_res_mpfr);
    // printf ("\n PARALLEL COMMON DOT PRODUCT : \n%.41f \n", final_res_common);
    // printf ("\n PARALLEL RARE BLAS HYBRID DOT PRODUCT : \n%.41f \n\n", final_res_rare_blas_hybrid);    
    // printf ("\n PARALLEL RARE BLAS ONLINE DOT PRODUCT : \n%.41f \n\n", final_res_rare_blas_online); 

    // Error
    mpfr_t tmp,tmp2,tmp3;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);

    mpfr_sub_d(tmp,final_res_mpfr,final_res_common,MPFR_RNDN);
    mpfr_div(tmp,tmp,final_res_mpfr,MPFR_RNDN);
    mpfr_add(Err_common, Err_common,tmp,MPFR_RNDN);
    mpfr_abs(Err_common,Err_common,MPFR_RNDN);

    mpfr_sub_d(tmp2,final_res_mpfr,final_res_rare_blas_hybrid,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,final_res_mpfr,MPFR_RNDN);
    mpfr_add(Err_rare_blas_hybrid, Err_rare_blas_hybrid,tmp2,MPFR_RNDN);
    mpfr_abs(Err_rare_blas_hybrid, Err_rare_blas_hybrid,MPFR_RNDN);

    mpfr_sub_d(tmp3,final_res_mpfr,final_res_rare_blas_online,MPFR_RNDN);
    mpfr_div(tmp3,tmp3,final_res_mpfr,MPFR_RNDN);
    mpfr_add(Err_rare_blas_online, Err_rare_blas_online,tmp3,MPFR_RNDN);
    mpfr_abs(Err_rare_blas_online, Err_rare_blas_online,MPFR_RNDN);
    
    }

    // Time mpfr
    Time_mpfr = Time_mpfr / (nb_gen*NB_EXEC);
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time common
    Time_common =Time_common / (nb_gen*NB_EXEC);
    // printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);

    // Time rare blas
    Time_rare_blas_hybrid = Time_rare_blas_hybrid / (nb_gen*NB_EXEC);
    // printf("TIME RARE BLAS ONLINE : %.45f \n",Time_rare_blas_hybrid);
    Time_rare_blas_online = Time_rare_blas_online / (nb_gen*NB_EXEC);
    // printf("TIME RARE BLAS ONLINE : %.45f \n",Time_rare_blas_online);

    Time[0] = Time_mpfr;
    Time[1] = Time_common;
    Time[2] = Time_rare_blas_hybrid;
    Time[3] = Time_rare_blas_online;
    Time[4] = 0; 
    Time[5] = 0; 

    mpfr_div_si(Err_common,Err_common,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_rare_blas_hybrid,Err_rare_blas_hybrid,nb_gen,MPFR_RNDN);
    mpfr_div_si(Err_rare_blas_online,Err_rare_blas_online,nb_gen,MPFR_RNDN);

    


    mpfr_set_d(Error[0], 0, MPFR_RNDN);
    mpfr_set(Error[1], Err_common, MPFR_RNDN);
    mpfr_set(Error[2], Err_rare_blas_hybrid, MPFR_RNDN);
    mpfr_set(Error[3], Err_rare_blas_online, MPFR_RNDN);
    mpfr_set(Error[4], Err_ozaki, MPFR_RNDN);
    mpfr_set(Error[5], Err_ex_blas, MPFR_RNDN);

}