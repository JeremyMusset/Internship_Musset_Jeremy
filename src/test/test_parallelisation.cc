#include <cmath>
#include <omp.h>
#include "../../include/test.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000
#define NB_EXEC 10

template void test_par_dot_prod<double>(std::vector<double> a_global, std::vector<double> b_global,int n,double required_cond, int &number, int nb_threads, double sum,mpfr_t eps);


/// @brief Execute test for parallel version
/// @tparam T Float or double
/// @param a_global vector a
/// @param b_global vector b
/// @param n size of a
/// @param required_cond conditioning
/// @param number error number
/// @param nb_threads number of thread
/// @param sum sum
/// @param eps epsilon
template < class T >
void test_par_dot_prod(std::vector<T> a_global, std::vector<T> b_global, int n,double required_cond, int &number, int nb_threads, double sum,mpfr_t eps){

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
    
   
        //////////////////////////////////////////////////////////////////
        //////////////////////// Data importation ////////////////////////
        //////////////////////////////////////////////////////////////////
      
        class std::vector<double> vec(2*n+1);
        vec[0]=n;
        for (unsigned int i=1;i<n+1;i++){
            vec[i] = a_global[i-1];
            vec[n+i] = b_global[i-1];
        }
        omp_set_num_threads(nb_threads);
        int r = n % nb_threads; // reste de la division entière de n par x
        int s = n / nb_threads; // taille des sous-vecteurs

        #pragma omp parallel for 
        for (unsigned int k=0 ; k < nb_threads; k++){
            double res_common, res_rare_blas_hybrid,res_rare_blas_online;
    
            int id = omp_get_thread_num(); // identifiant du thread
            int start = id * s + (id < r ? id : r); // début du sous-vecteur
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
        mpfr_t a_mpfr[size], b_mpfr[size];
        for (unsigned int i = 0; i < size; i++){
            mpfr_init2(a_mpfr[i], P);
            mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
            mpfr_init2(b_mpfr[i], P);
            mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
        } 
        mpfr_init2(res_mpfr,P);
        mpfr_set_d(res_mpfr,0,MPFR_RNDN);
        dot_prod_mpfr(size,a_mpfr,b_mpfr,res_mpfr);
        mpfr_init2(result_mpfr[k], P);
        mpfr_set(result_mpfr[k],res_mpfr,MPFR_RNDN);

        
        ////////////////////////////////////////////////////////////////////
        //////////////////////// COMMON DOT PRODUCT ////////////////////////
        ////////////////////////////////////////////////////////////////////

        res_common = 0.0;

        res_common = common_dot_prod(a,b,size,1,1);
        result_common[k] = res_common;


        ////////////////////////////////////////////////////////////////////
        ///////////////////// RARE-BLAS DOT PRODUCT ////////////////////////
        ////////////////////////////////////////////////////////////////////

        res_rare_blas_hybrid = 0.0;
        res_rare_blas_online = 0.0;

        res_rare_blas_hybrid = Rare_blas_dot_prod_hybrid(a,b,size);
        result_rare_blas_hybrid[k] = res_rare_blas_hybrid;

        res_rare_blas_online = Rare_blas_dot_prod_online(a,b,size);
        result_rare_blas_online[k] = res_rare_blas_online;

        

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