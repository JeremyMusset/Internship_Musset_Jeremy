#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/serial.h"
#include "../include/gen_random_number.h"

using namespace std;

#define P 150
#define NB_EXEC 20 // number of execution of each dot product to compute the performance.

int main() {
    int n, nb_gen;
    double cond, sum;
    n = 100;
    nb_gen = 10;
    cond = 2;
    sum = 100;

    int sz = 5;
    class std::vector<double> Time(sz);
    class std::vector<mpfr_t> Error(sz);

    for (unsigned int i; i<sz;i++){
        mpfr_init2(Error[i], P);
    }
    seq_dot_prod(n, cond, nb_gen,sum,Time,Error,sz);
    





    // Print
    printf("\nTemps mpfr : %.30f\n",Time[0]);
    printf("Temps common dot prod : %.30f \n",Time[1]);
    printf("Temps rare blas dot prod : %.30f\n",Time[2]);

    mpfr_printf("\nError dot prod : %.30Rg \n",Error[1]);
    mpfr_printf("Error rare blas : %.30Rg \n\n",Error[2]);




    return 0;  
















    // // Define c++ variables
    // double sum;
    // double required_cond;
    // double res_common, res_rare_blas;
    // double err_rare_blas;
    // int n;

    // // Variables
    // n = 3;
    // sum = 10;
    // required_cond = 2;
    // unsigned int nb_gen = 2;

    // class std::vector<double> a(n);
    // class std::vector<double> b(n);
    
    // // Time 
    // double Time_mpfr,Time_common,Time_rare_blas;
    // Time_mpfr = 0;
    // Time_common = 0;
    // Time_rare_blas = 0;

    // // Vectors generation
    // vec_gen(nb_gen,n,required_cond,sum);
    
    // // We execute dot product on the nb_gen files
    // for (unsigned int l=0;l<nb_gen;l++){
    //     printf("---------------------- DATA FILE N°%d ----------------------\n",l);

    //     ////////////////////////////////////////////////////////
    //     /////////////////// Data importation ///////////////////
    //     ////////////////////////////////////////////////////////
    //     class std::vector<double> vec;
    //     import_vec(vec,l);   

    //     // Assign a,b and n
    //     n = vec[0];
    //     class std::vector<double> a(n);
    //     class std::vector<double> b(n);
    //     for (unsigned int i=0;i<n;i++){
    //         a[i] = vec[i+1];
    //         b[i] = vec[n+1+i];
    //     }

    //     // Print vector

    //     printf("a = \n");
    //     for (unsigned int i=0;i<n;i++){
    //         printf("%.35f \n",a[i]);
    //     }
    //     printf("\nb = \n");
    //     for (unsigned int i=0;i<n;i++){
    //         printf("%.35f \n",b[i]);
    //     }

    //     ////////////////////////////////////////////////////////
    //     /////////////////// MPFR_dot product ///////////////////
    //     ////////////////////////////////////////////////////////
    //     printf("\n \nCORRECT ROUNDING : \n");
    //     // Time
    //     struct timespec start_mpfr, end_mpfr;
    //     printf("ok");
    //     // Vectors importation 
    //     mpfr_t a_mpfr[n], b_mpfr[n];
    //     for (unsigned int i = 0; i < n; i++){
    //         mpfr_init2(a_mpfr[i], P);
    //         mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
    //         mpfr_init2(b_mpfr[i], P);
    //         mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
    //     }  

    //     // Define and initialize result
    //     mpfr_t res_mpfr;
    //     mpfr_init2(res_mpfr,P);

    //     // Dot product
    //     clock_gettime(CLOCK_REALTIME,&start_mpfr);

    //     for (unsigned int T=0; T<NB_EXEC;T++){
            
    //         dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);
    //     }

    //     clock_gettime(CLOCK_REALTIME,&end_mpfr);                        
    //     Time_mpfr += ((double)(end_mpfr.tv_nsec - start_mpfr.tv_nsec));

    //     // Results 
    //     mpfr_printf ("%.41Rg \n", res_mpfr);



    //     ////////////////////////////////////////////////////////
    //     ///////////////////COMMON DOT PRODUCT///////////////////
    //     ////////////////////////////////////////////////////////

    //     printf("\n \nCOMMON DOT PROD : \n");
    //     // Time
    //     struct timespec start_common, end_common;

    //     // Dot product 
    //     res_common = 0.0;
    //     clock_gettime(CLOCK_REALTIME,&start_common);

    //     for (unsigned int T=0; T<NB_EXEC;T++){
    //         res_common = common_dot_prod(a,b,n,1,1);
    //     }

    //     clock_gettime(CLOCK_REALTIME,&end_common);                        
    //     Time_common += ((double)(end_common.tv_nsec - start_common.tv_nsec) );
        
    //     // Results
    //     printf("%.41f\n",res_common);



    //     ////////////////////////////////////////////////////////
    //     //////////////// RARE-BLAS DOT PRODUCT /////////////////
    //     ////////////////////////////////////////////////////////

    //     printf("\n \nRARE BLAS DOT PROD : \n");
    //     // Time
    //     struct timespec start_rare_blas, end_rare_blas;
    //     res_rare_blas = 0.0;

    //     // Dot product
    //     clock_gettime(CLOCK_REALTIME,&start_rare_blas);

    //     for (unsigned int T=0; T<NB_EXEC;T++){
    //         res_rare_blas = Rare_blas_dot_prod_hybrid(a,b,n);
    //     }

    //     clock_gettime(CLOCK_REALTIME,&end_rare_blas);                        
    //     Time_rare_blas += ((double)(end_rare_blas.tv_nsec - start_rare_blas.tv_nsec));

    //     // Results
    //     printf("%.41f\n",res_rare_blas);                
    //     printf("\n \n");


    //     // printf("___________________________TEST IFASTSUM_____________________________");
    //     // std::vector<double> testifast(2048);
    //     //  for (unsigned int i=0;i<2048;i++){
    //     //     testifast[i] = 0.2;
    //     // }

    //     // double resifast = 0.0;

    //     // IFastSum(testifast,true,resifast);
    //     //  printf("\nBON : %.25f\n",0.2*2048);
    //     // printf("res : \n%.25f \n",resifast);

    //     ////////////////////////////////////////////////////////
    //     //////////////////// OZAKI SCHEME //////////////////////
    //     ////////////////////////////////////////////////////////

    // }

    //  // Time mpfr
    // Time_mpfr = Time_mpfr / (nb_gen*NB_EXEC);
    // printf("TIME CORRECT ROUNDING : %.15f \n",Time_mpfr);

    // // Time common
    // Time_common =Time_common / (nb_gen*NB_EXEC);
    // printf("TIME COMMON DOT PRODUCT : %.45f \n",Time_common);

    // // Time rare blas
    // Time_rare_blas = Time_rare_blas / (nb_gen*NB_EXEC);
    // printf("TIME RARE BLAS : %.45f \n",Time_rare_blas);


    // return 0;
}


// ../src/generation/*.cc ../src/dot_product/*.cc ../rounding_error/*.cc
