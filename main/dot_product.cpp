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
#include "../include/error_free.h"
#include "../include/dot_product.h"
#include "../include/gen_random_number.h"

using namespace std;

#define P 150

int main() {
    
    // Define c++ variables
    double sum;
    double required_cond;
    double res_common, res_rare_blas;
    double err_rare_blas;
    int n;

    // Variables
    n = 3;
    sum = 10;
    required_cond = 2;
    unsigned int nb_gen = 2;


    class std::vector<double> a(n);
    class std::vector<double> b(n);
    
    // Vectors generation
    vec_gen(nb_gen,n,required_cond,sum);
    
    // We execute dot product on the nb_gen files
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
        clock_t start_mpfr, end_mpfr;
        double elapsed_mpfr;
        start_mpfr = clock();

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
        dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);

        // Results 
        mpfr_printf ("%.41Rg \n", res_mpfr);
        end_mpfr = clock();                        
        elapsed_mpfr = ((double)end_mpfr - start_mpfr) / CLOCKS_PER_SEC;
        printf("Time : \n%.25f seconds \n", elapsed_mpfr);



        ////////////////////////////////////////////////////////
        ///////////////////COMMON DOT PRODUCT///////////////////
        ////////////////////////////////////////////////////////

        printf("\n \nCOMMON DOT PROD : \n");
        // Time
        clock_t start_common, end_common;
        double elapsed_common;
        start_common = clock();

        // Dot product 
        res_common = 0.0;
        res_common = common_dot_prod(a,b,n,1,1);
        
        // Results
        printf("%.41f\n",res_common);
        end_common = clock();                        
        elapsed_common = ((double)end_common - start_common) / CLOCKS_PER_SEC;
        printf("Time : \n%.25f seconds \n", elapsed_common);



        ////////////////////////////////////////////////////////
        //////////////// RARE-BLAS DOT PRODUCT /////////////////
        ////////////////////////////////////////////////////////

        printf("\n \nRARE BLAS DOT PROD : \n");
        // Time
        clock_t start_rare_blas, end_rare_blas;
        double elapsed_rare_blas;
        err_rare_blas = 0.0;
        start_rare_blas = clock();
        res_rare_blas = 0.0;
        res_rare_blas = Rare_blas_dot_prod_hybrid(a,b,n);
        printf("%.41f\n",res_rare_blas);
        end_rare_blas = clock();                        
        elapsed_rare_blas = ((double)end_rare_blas - start_rare_blas) / CLOCKS_PER_SEC;
        printf("Time : \n%.25f seconds \n", elapsed_rare_blas);
        printf("\n \n");


        // printf("___________________________TEST IFASTSUM_____________________________");
        // std::vector<double> testifast(2048);
        //  for (unsigned int i=0;i<2048;i++){
        //     testifast[i] = 0.2;
        // }

        // double resifast = 0.0;

        // IFastSum(testifast,true,resifast);
        //  printf("\nBON : %.25f\n",0.2*2048);
        // printf("res : \n%.25f \n",resifast);

        ////////////////////////////////////////////////////////
        //////////////////// OZAKI SCHEME //////////////////////
        ////////////////////////////////////////////////////////

    }
}


// ../src/generation/*.cc ../src/dot_product/*.cc ../rounding_error/*.cc
