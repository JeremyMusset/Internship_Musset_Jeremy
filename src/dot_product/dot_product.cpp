#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../include/gen_random_number.h"


using namespace std;

#define P 150
#define SMAX 25      // 20 + a with a such as nb of files = 10^a
#define NB_EXEC 20   // number of execution of each dot product to compute the performance.



int main() {
    
    // Define c++ variables
    double sum;
    double required_cond;
    double res_common, res_rare_blas;
    int n;
    sum = 150;
    required_cond = 2;
    unsigned int nb_gen = 2;
    class std::vector<double> a(n);
    class std::vector<double> b(n);

    // Time 
    double Time_mpfr, Time_common,Time_rare_blas;
    Time_mpfr = 0;
    Time_common = 0;
    Time_rare_blas = 0;


    // We execute "nb_gen" dot product
    for (unsigned int l=0;l<nb_gen;l++){
        printf("---------------------- DATA FILE N°%d ----------------------\n",l);

        ////////////////////////////////////////////////////////
        /////////////////// Data importation ///////////////////
        ////////////////////////////////////////////////////////
        class std::vector<double> vec;
        import_vec(vec,l);   

        // Assign a,b and n
        n = vec[0];
        class std::vector<double> a(n);
        class std::vector<double> b(n);
        for (unsigned int i=0;i<n;i++){
            a[i] = vec[i+1];
            b[i] = vec[n+1+i];
        }

        // Print vector

        printf("a = \n");
        for (unsigned int i=0;i<n;i++){
            printf("%.35f \n",a[i]);
        }
        printf("\nb = \n");
        for (unsigned int i=0;i<n;i++){
            printf("%.35f \n",b[i]);
        }

        ////////////////////////////////////////////////////////
        /////////////////// MPFR_dot product ///////////////////
        ////////////////////////////////////////////////////////
        printf("\n \nCORRECT ROUNDING : \n");
        // Time
        int start_mpfr, end_mpfr;
        double elapsed_mpfr;
        elapsed_mpfr = 0;
        struct timespec tp;

        // Vectors importation 
        mpfr_t a_mpfr[n], b_mpfr[n];
        for (unsigned int i = 0; i < n; i++){
            mpfr_init2(a_mpfr[i], P);
            mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
            mpfr_init2(b_mpfr[i], P);
            mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
        }  

        // Define and initialize result
        mpfr_t res_mpfr;
        mpfr_init2(res_mpfr,P);

        // Dot product
        for (unsigned int T=0; T<NB_EXEC;T++){
            start_mpfr = clock_gettime(CLOCK_REALTIME,&tp);
            dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);
            end_mpfr = clock_gettime(CLOCK_REALTIME,&tp);                        
            elapsed_mpfr += ((double)end_mpfr - start_mpfr);
        }
        

        // Results 
        mpfr_printf ("%.41Rg \n", res_mpfr);
        Time_mpfr += elapsed_mpfr; 
        printf("Time : \n%.25f seconds \n", elapsed_mpfr);



        ////////////////////////////////////////////////////////
        ///////////////////COMMON DOT PRODUCT///////////////////
        ////////////////////////////////////////////////////////

        printf("\n \nCOMMON DOT PROD : \n");
        // Time
        double start_common, end_common;
        double elapsed_common;
        start_common = clock_gettime(CLOCK_REALTIME,&tp);

        // Dot product 
        res_common = 0.0;
        res_common = common_dot_prod(a,b,n,1,1);
        
        // Results
        printf("%.41f\n",res_common);
        end_common = clock_gettime(CLOCK_REALTIME,&tp);                        
        elapsed_common = ((double)end_common - start_common) / 1000000000;
        printf("Time : \n%.25f seconds \n", elapsed_common);



        ////////////////////////////////////////////////////////
        //////////////// RARE-BLAS DOT PRODUCT /////////////////
        ////////////////////////////////////////////////////////

        printf("\n \nRARE BLAS DOT PROD : \n");
        // Time
        double start_rare_blas, end_rare_blas;
        double elapsed_rare_blas;
        start_rare_blas = clock_gettime(CLOCK_REALTIME,&tp);
        res_rare_blas = 0.0;
        res_rare_blas = common_dot_prod(a,b,n,1,1);
        printf("%.41f\n",res_rare_blas);
        end_rare_blas = clock_gettime(CLOCK_REALTIME,&tp);                        
        elapsed_rare_blas = ((double)end_rare_blas - start_rare_blas) / 1000000000;
        printf("Time : \n%.25f seconds \n", elapsed_rare_blas);
        printf("\n \n");
    }

}


