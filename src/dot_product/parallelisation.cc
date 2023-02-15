#include <cmath>
#include "../../include/parallelisation.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000
#define NB_EXEC 10

template
void par_dot_prod<double>(int n,double required_cond, int nb_gen, int nb_threads, double sum, std::vector<double> &Time, std::vector<mpfr_t> &Error, int sz);

/// @brief Execute many dot product and return us average time and error
/// @tparam T 
/// @param n size of vector
/// @param required_cond required conditioninh
/// @param nb_gen number of vector which will be generate
/// @param nb_threads number of threads
/// @param sum 
/// @param Time Output
/// @param Error Output
/// @param sz Size of output (5)
template < class T >
void par_dot_prod(int n,double required_cond, int nb_gen, int nb_threads, double sum, std::vector<T> &Time, std::vector<mpfr_t> &Error, int sz){

    // Define c++ variables
    int n_remaining,nb_t_remaining, start_thread;

    // Variables
    int size;
    
       
    // Result
    class std::vector<double> result_common(nb_threads);
    class std::vector<double> result_rare_blas(nb_threads);
    class std::vector<mpfr_t> result_mpfr(nb_threads);


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

    class std::vector<double> testa(n);
    class std::vector<double> testb(n);
    
    // Vectors generation
    vec_gen(nb_gen,n,required_cond,sum);
    
    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){
        printf("\n\n---------------------- DATA FILE N°%d ----------------------\n",l);

        //////////////////////////////////////////////////////////////////
        //////////////////////// Data importation ////////////////////////
        //////////////////////////////////////////////////////////////////
      
        class std::vector<double> vec;
        import_vec(vec,l); 
        for (unsigned int i=0;i<2*n+1;i++){
            printf("%.40f\n",vec[i]);
        }  
        omp_set_num_threads(nb_threads);
    //////////////////////// CHECK RESULT ////////////////////////

    printf("\n \nCORRECT ROUNDING SEQUENTIAL : \n");
        // Vectors importation 
        for (unsigned int i=0;i<n;i++){
            testa[i] = vec[i+1];
            testb[i] = vec[n+1+i];
        }
        
        mpfr_t a_mpfr_seq[n], b_mpfr_seq[n];
        for (unsigned int i = 0; i < n; i++){
            mpfr_init2(a_mpfr_seq[i], P);
            mpfr_set_d(a_mpfr_seq[i], testa[i], MPFR_RNDN);
            mpfr_init2(b_mpfr_seq[i], P);
            mpfr_set_d(b_mpfr_seq[i], testb[i], MPFR_RNDN);
        }
        
        // Define and initialize result
        mpfr_t pre_res_mpfr;
        mpfr_init2(pre_res_mpfr,P);

        // Dot product
        dot_prod_mpfr(n,a_mpfr_seq,b_mpfr_seq,pre_res_mpfr);

        // Results 
        mpfr_printf ("Result sequential : %.41Rg \n", pre_res_mpfr);

        printf("\n \nPARALLEL ENVIRONMENT : \n");
        ///////////////////////////////////////////////////////////////////////////////////


        int r = n % nb_threads; // reste de la division entière de n par x
        int s = n / nb_threads; // taille des sous-vecteurs

        #pragma omp parallel for
        for (unsigned int k=0 ; k < nb_threads; k++){
            double res_common, res_rare_blas;
    
            int id = omp_get_thread_num(); // identifiant du thread
            int start = id * s + (id < r ? id : r); // début du sous-vecteur
            int end = start + s + (id < r ? 1 : 0); // fin du sous-vecteur
            int size = end - start; // taille du sous-vecteur
        
            printf("Thread : %d         size : %d\n",omp_get_thread_num(),size);
            
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

        Time_mpfr = ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec)); 

        
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

        struct timespec start_rare_blas, end_rare_blas;
        res_rare_blas = 0.0;

        clock_gettime(CLOCK_REALTIME,&start_rare_blas);
        for (unsigned int t=0; t<NB_EXEC;t++){
            res_rare_blas = Rare_blas_dot_prod_hybrid(a,b,size);
        }
        clock_gettime(CLOCK_REALTIME,&end_rare_blas);     
        result_rare_blas[k] = res_rare_blas;

        Time_rare_blas += ((double)(end_rare_blas.tv_nsec - start_rare_blas.tv_nsec));

    }

    // Regroup final results
    mpfr_t final_res_mpfr;
    mpfr_init2(final_res_mpfr,P);
    mpfr_set_d(final_res_mpfr, 0, MPFR_RNDN);
    printf("\n");
    for (int i=0;i<nb_threads; i++) {
        mpfr_add(final_res_mpfr,final_res_mpfr,result_mpfr[i],MPFR_RNDN);
    }
    double final_res_common, final_res_rare_blas;
    int L = 200;
    class std::vector<double> q1(L);
    class std::vector<double> q2(L);
    final_res_common = FastSum(result_common,nb_threads,q1,L,0);
    final_res_rare_blas = FastSum(result_rare_blas,nb_threads,q2,L,0);
    
    // Print results
    // mpfr_printf ("\n CORRECT ROUNDING : \n%.41Rg \n", final_res_mpfr);
    // printf ("\n COMMON DOT PRODUCT : \n%.41f \n", final_res_common);
    printf ("\n RARE BLAS DOT PRODUCT : \n%.41f \n\n", final_res_rare_blas);    

    // Error
    mpfr_t tmp;
    mpfr_init2(tmp, P);
    mpfr_sub_d(tmp,final_res_mpfr,final_res_common,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_common, Err_common,tmp,MPFR_RNDN);

    mpfr_sub_d(tmp,final_res_mpfr,final_res_rare_blas,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_rare_blas, Err_rare_blas,tmp,MPFR_RNDN);


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