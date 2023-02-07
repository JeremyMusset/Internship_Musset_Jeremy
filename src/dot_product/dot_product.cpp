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
#include "../../include/error_free.h"
using namespace std;
#define P 150
#define SMAX 25      // 20 + a with a such as nb of files = 10^a

template < class T >
std::vector<T> import_vec(int l){
    char nom[SMAX];  
    sprintf(nom,"../data/vector%d.bin",l);
    class std::vector<T> vec;
    std::ifstream input_file(nom, std::ios::binary);
    if (!input_file) {
        std::cerr << "Could not open binary_file.bin" << std::endl;
        return 1;
    }
    double number;
    while (input_file.read(reinterpret_cast<char*>(&number), sizeof(number))) {
        vec.push_back(number);
    }
    input_file.close(); 
    return vec;
}


int main() {
    
    // Define c++ variables
    double sum;
    double cond;
    double c;
    int n;
    sum = 150;
    cond = 1;
    unsigned int nb_gen = 2;
    class std::vector<double> a(n);
    class std::vector<double> b(n);

    

    // On execute "nb_gen" produit scalaire
    for (unsigned int l=0;l<nb_gen;l++){
        printf("---------------------- DATA FILE N°%d ----------------------\n",l);

        ////////////////////////////////////////////////////////
        /////////////////// Data importation ///////////////////
        ////////////////////////////////////////////////////////
        //class std::vector<double> vec;
        // vec = import_vec(l);   

        // BUG WITH IMPORT_VEC SO PUT HIM IN MAIN

        char nom[SMAX];  
        sprintf(nom,"../data/vector%d.bin",l);
        class std::vector<double> vec;
        std::ifstream input_file(nom, std::ios::binary);
        if (!input_file) {
            std::cerr << "Could not open binary_file.bin" << std::endl;
            return 1;
        }
        double number;
        while (input_file.read(reinterpret_cast<char*>(&number), sizeof(number))) {
            vec.push_back(number);
        }
        input_file.close(); 

        // END

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
        mpfr_t res;
        mpfr_init2(res,P);

        // Dot product
        dot_prod_mpfr(n,a_mpfr,b_mpfr,res);

        // Results 
        mpfr_printf ("%.41Rg \n", res);
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
        c = 0.0;
        c = common_dot_prod(a,b,n,1,1);
        printf("%.41f\n",c);
        end_common = clock();                        
        elapsed_common = ((double)end_common - start_common) / CLOCKS_PER_SEC;
        printf("Time : \n%.25f seconds \n", elapsed_common);
        printf("\n \n");



        ////////////////////////////////////////////////////////
        //////////////// RARE-BLAS DOT PRODUCT /////////////////
        ////////////////////////////////////////////////////////

        printf("___________________________ TEST Twoprod _______________________ \n \n \n");

        class std::vector<double> tp2(n);
        class std::vector<double> tp1(n);
        TwoProd(a,b,n,tp1,tp2);
        

        printf("\n TWO PROD : \n");
        printf("RES : \n");
        for (unsigned int i=0;i<n;i++){
            printf("%.15f \n",tp1[i]);
        }
        printf("\n");
        for (unsigned int i=0;i<n;i++){
            printf("%.15f \n",tp2[i]);
        }
    }
    return 0;
}
