#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"
#include "../include/parallelisation.h"


using namespace std;

#define P 150
#define NB_EXEC 20 // number of execution of each dot product to compute the performance.

int main() {
    
    // Define c++ variables
    double sum;
    double required_cond;
    int n,n_remaining,nb_t_remaining, start_thread;

    // Variables
    n = 8;
    sum = 10;
    required_cond = 2;
    unsigned int nb_gen = 20;
    int nb_t = 7;
    int size;
    
       
    // Result
    class std::vector<double> result_common(nb_t);
    class std::vector<double> result_rare_blas(nb_t);
    class std::vector<mpfr_t> result_mpfr(nb_t);
    
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
        n = vec[0];
        omp_set_num_threads(nb_t);

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
        mpfr_printf ("%.41Rg \n", pre_res_mpfr);

        printf("\n \nPARALLEL ENVIRONMENT : \n");
        ///////////////////////////////////////////////////////////////////////////////////

        n_remaining = n;
        nb_t_remaining = nb_t;
        start_thread = 0;
        // #pragma omp parallel for
        for (unsigned int k=0 ; k < nb_t; k++){
            double res_common, res_rare_blas;
    
            
            size = ceil((float)n_remaining/(nb_t_remaining));
            // printf("Thread : %d   ",omp_get_thread_num());
            printf("Thread : %d   ",k);           
            printf("        Avec nb de t : %d et nb_elem : %d alors   size : %d\n",nb_t_remaining,n_remaining,size);
            nb_t_remaining -= 1 ;
            n_remaining -= size;
        
            class std::vector<double> a(size);
            class std::vector<double> b(size);
            for (unsigned int i=start_thread; i<start_thread + size ;i++){
                a[i-start_thread] = vec[i+1];
                b[i-start_thread] = vec[n+1+i];
            }
            start_thread += size;
        

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
        for (unsigned int T=0; T<NB_EXEC;T++){
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
        for (unsigned int T=0; T<NB_EXEC;T++){
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
        for (unsigned int T=0; T<NB_EXEC;T++){
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
    for (int i=0;i<nb_t; i++) {
        mpfr_add(final_res_mpfr,final_res_mpfr,result_mpfr[i],MPFR_RNDN);
    }
    double final_res_common, final_res_rare_blas;
    int L = 200;
    class std::vector<double> q1(L);
    class std::vector<double> q2(L);
    final_res_common = FastSum(result_common,nb_t,q1,L,0);
    final_res_rare_blas = FastSum(result_rare_blas,nb_t,q2,L,0);
    
    // Print results
    mpfr_printf ("\n CORRECT ROUNDING : \n%.41Rg \n", final_res_mpfr);
    printf ("\n COMMON DOT PRODUCT : \n%.41f \n", final_res_common);
    printf ("\n RARE BLAS DOT PRODUCT : \n%.41f \n\n", final_res_rare_blas);    
    }

    // Time mpfr
    Time_mpfr = Time_mpfr / (nb_gen*NB_EXEC);
    printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // Time common
    Time_common =Time_common / (nb_gen*NB_EXEC);
    printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);

    // Time rare blas
    Time_rare_blas = Time_rare_blas / (nb_gen*NB_EXEC);
    printf("TIME RARE BLAS : %.45f \n",Time_rare_blas);

    return 0;    
}
    


