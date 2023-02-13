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
    int n,n_remaining;

    // Variables
    n = 10;
    sum = 10;
    required_cond = 2;
    unsigned int nb_gen = 3;
    int nb_threads = 7;
    int start_thread = 0;
       
    // Result
    class std::vector<double> result_common(nb_threads);
    class std::vector<double> result_rare_blas(nb_threads);
    class std::vector<mpfr_t> result_mpfr(nb_threads);
    
    // Time 
    double Time_mpfr,Time_common,Time_rare_blas;
    Time_mpfr = 0;
    Time_common = 0;
    Time_rare_blas = 0;

    class std::vector<double> testa(n);
    class std::vector<double> testb(n);

    // Vectors generation
    vec_gen(nb_gen,n,required_cond,sum);
    
    n_remaining = n;
    int nb_t_remaining = nb_threads; 
    int size;

    // #pragma omp parallel for
    for (unsigned int k=0 ; k < nb_threads; k++){
            double res_common, res_rare_blas;

            size = ceil((float)n_remaining/(nb_t_remaining));
            // printf("Thread : %d   ",omp_get_thread_num());
            printf("Thread : %d   ",k);           
            printf("        Avec nb de t : %d et nb_elem : %d alors   size : %d\n",nb_t_remaining,n_remaining,size);
            nb_t_remaining -= 1 ;
            n_remaining -= size;
    }     





    printf("__________________TEST IMPORT ___________________");
    vec_gen(nb_gen,n,required_cond,sum);
    for (unsigned int l=0;l<nb_gen;l++){
        printf("\n\n---------------------- DATA FILE N°%d ----------------------\n",l);
        class std::vector<double> vec;
        
        import_vec(vec,l);   
        n = vec[0];
        omp_set_num_threads(nb_threads);
        for (unsigned int i = 0; i < 2*n+1; i++){
            printf("%.30f\n",vec[i]);
        }
    }
    return 1;
}