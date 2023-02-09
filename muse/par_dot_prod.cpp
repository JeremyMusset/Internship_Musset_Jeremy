#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include <iostream>
#include <string>
#include <fstream>
#include <mpfr.h>
#include <omp.h>
#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"

using namespace std;

#define P 150

int main() {
    
    // Define c++ variables
    double sum;
    double required_cond;
    int n;

    // Variables
    n = 10;
    sum = 10;
    required_cond = 2;
    unsigned int nb_gen = 2;
    int nb_t = 4;

    
        

    class std::vector<double> result_common(nb_t);
    class std::vector<double> result_rare_blas(nb_t);
    class std::vector<mpfr_t> result_mpfr(nb_t);
    class std::vector<clock_t>  time_common(nb_t);
    class std::vector<clock_t> time_mpfr(nb_t);
    class std::vector<clock_t> time_rare(nb_t);
    // for (unsigned int i = 0; i < nb_t ; i++)
    // {
    //     mpfr_init2((*result_mpfr)[i], P);
    // }


    class std::vector<double> testa(n);
    class std::vector<double> testb(n);

    // Vectors generation
    vec_gen(nb_gen,n,required_cond,sum);
    
    // We execute dot product on the nb_gen files
    for (unsigned int l=0;l<nb_gen;l++){
        printf("\n\n---------------------- DATA FILE N°%d ----------------------\n",l);

        ////////////////////////////////////////////////////////
        /////////////////// Data importation ///////////////////
        ////////////////////////////////////////////////////////
        class std::vector<double> vec;
        import_vec(vec,l);   
        printf("vectors = \n");
            for (unsigned int i=0;i<2*n+1;i++){
            printf("%.35f \n",vec[i]);
        }
        n = vec[0];
        omp_set_num_threads(nb_t);

    //////////////////////// CHECK RESULT ////////////////////////

    printf("\n \nCORRECT ROUNDING SEQUENTIAL : \n");
        // Vectors importation 
         for (unsigned int i=0;i<n;i++){
            testa[i] = vec[i+1];
            testb[i] = vec[n+1+i];
        }
        mpfr_t a_mpfr[n], b_mpfr[n];
        for (unsigned int i = 0; i < n; i++){
            mpfr_init2(a_mpfr[i], P);
            mpfr_set_d(a_mpfr[i], testa[i], MPFR_RNDN);
            mpfr_init2(b_mpfr[i], P);
            mpfr_set_d(b_mpfr[i], testb[i], MPFR_RNDN);
        }  

        // Define and initialize result
        mpfr_t pre_res_mpfr;
        mpfr_init2(pre_res_mpfr,P);

        // Dot product
        dot_prod_mpfr(n,a_mpfr,b_mpfr,pre_res_mpfr);

        // Results 
        mpfr_printf ("%.41Rg \n", pre_res_mpfr);

        printf("\n \nPARALLEL ENVIRONMENT : \n");
        ///////////////////////////////////////////////////////////////////////////////////

        // #pragma omp parallel for
        for (unsigned int k=0 ; k < nb_t; k++){
            double res_common, res_rare_blas;
            double err_rare_blas;
            int size;
            int alpha = ceil((float)n/nb_t);
            if (n % nb_t != 0) {            // divergence
                if (k == nb_t - 1){          // dernier thread
                    size = n - (nb_t - 1)*alpha ;
                }
                else{
                    size = alpha;
                }
            }
            else {                          // pas de divergence
                size = alpha;
            }
            class std::vector<double> a(size);
            class std::vector<double> b(size);
            for (unsigned int i=k*alpha; i<k*alpha+size ;i++){
                a[i-k*alpha] = vec[i+1];
                b[i-k*alpha] = vec[n+1+i];
            }
            // Print vectors
            printf("\n______________ Thread number %d _____________\n ",k);

                printf("a = \n");
                for (unsigned int i=0;i<size;i++){
                    printf("%.35f \n",a[i]);
                }
                printf("\nb = \n");
                for (unsigned int i=0;i<size;i++){
                    printf("%.35f \n",b[i]);
            }



        ////////////////////////////////////////////////////////
        /////////////////// MPFR_dot product ///////////////////
        ////////////////////////////////////////////////////////

        // Time
        mpfr_t res_mpfr;
        clock_t start_mpfr, end_mpfr;
        double elapsed_mpfr;
        start_mpfr = clock();

        // Vectors importation 
        mpfr_t a_mpfr[size], b_mpfr[size];
        for (unsigned int i = 0; i < size; i++){
            mpfr_init2(a_mpfr[i], P);
            mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
            mpfr_init2(b_mpfr[i], P);
            mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
        }  

        // Define and initialize result
        mpfr_init2(res_mpfr,P);

        // Dot product
        dot_prod_mpfr(size,a_mpfr,b_mpfr,res_mpfr);
        mpfr_init2(result_mpfr[k], P);
        mpfr_set(result_mpfr[k],res_mpfr,MPFR_RNDN);

        // Results 
        end_mpfr = clock();                        
        elapsed_mpfr = ((double)end_mpfr - start_mpfr) / CLOCKS_PER_SEC;
        time_mpfr[k] = elapsed_mpfr;



        ////////////////////////////////////////////////////////
        ///////////////////COMMON DOT PRODUCT///////////////////
        ////////////////////////////////////////////////////////

        // Time
        clock_t start_common, end_common;
        double elapsed_common;
        start_common = clock();

        // Dot product 
        res_common = 0.0;
        res_common = common_dot_prod(a,b,size,1,1);
        result_common[k] = res_common;


        // Results
        end_common = clock();                        
        elapsed_common = ((double)end_common - start_common) / CLOCKS_PER_SEC;
        time_common[k] = elapsed_common;


        ////////////////////////////////////////////////////////
        //////////////// RARE-BLAS DOT PRODUCT /////////////////
        ////////////////////////////////////////////////////////

        // Time
        clock_t start_rare_blas, end_rare_blas;
        double elapsed_rare_blas;
        start_rare_blas = clock();

        // Dot product
        res_rare_blas = 0.0;
        res_rare_blas = Rare_blas_dot_prod_hybrid(a,b,size);
        result_rare_blas[k] = res_rare_blas;

        // Time
        end_rare_blas = clock();                        
        elapsed_rare_blas = ((double)end_rare_blas - start_rare_blas) / CLOCKS_PER_SEC;
        time_rare[k] = elapsed_rare_blas;

        }

    double final_res_common, final_res_rare_blas;
    int L = 200;
    class std::vector<double> q1(L);
    class std::vector<double> q2(L);
    mpfr_t final_res_mpfr;
    mpfr_init2(final_res_mpfr,P);
    mpfr_set_d(final_res_mpfr, 0, MPFR_RNDN);
    for (int i=0;i<nb_t; i++) {
        mpfr_add(final_res_mpfr,final_res_mpfr,result_mpfr[i],MPFR_RNDN);
    }
    final_res_common = FastSum(result_common,nb_t,q1,L,0);
    final_res_rare_blas = FastSum(result_rare_blas,nb_t,q2,L,0);
    
    mpfr_printf ("\n MPFR : %.41Rg \n", final_res_mpfr);
    printf ("\n COMMON : %.41f \n", final_res_common);
    printf ("\n RARE BLAS : %.41f \n\n", final_res_rare_blas);
        
    }
}
