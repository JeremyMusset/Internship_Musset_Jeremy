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

template < class T >
std::vector<T> import_vec( std::vector<T> a, std::vector<T> b, string fic){
    int n;
    int k = 0;
    n = 3;
    std::vector<T> vec(2*n+1);
    ifstream f(fic,ios::in | ios::binary );
    f.read((char*)&vec,(2*n+1)*sizeof(double));
    f.close();





    // if(f){
    //     string ligne;
    //     while(getline(f, ligne))  // tant que l'on peut acceder à la ligne
    //     {   
    //         char caractere;  
    //         f.get(caractere);

    //         if (k==0){                  // First line
                
    //             //std::vector<T> vec(n);

    //         }
    //         if (k>=1 && k<=n){           // Vector a
    //             // vec[k] = stod(ligne);
    //         }
    //         if (k>n){                   // Vector b
    //             // vec[k] = stod(ligne);
    //         }
    //     k = k+1;        
    //     }
    // }
    // else {
    //     cerr << "Impossible d'ouvrir le fichier !" << endl;
    // }
    // vec[0] = n;
    return vec;
}


int main() {
    
    // Define c++ variables
    double sum;
    double cond;
    double c;
    int n;
    n = 3;
    sum = 150;
    cond = 1;
    unsigned int nb_gen = 2;
    class std::vector<double> a(n);
    class std::vector<double> b(n);
    class std::vector<double> tp1(n);
    class std::vector<double> tp2(n);

    // On execute "nb_gen" produit scalaire
    for (unsigned int l=0;l<1;l++){
        // // Use MPFR_dot product 
        // printf("\n \nCORRECT ROUNDING : \n");
        // // Time
        // clock_t start_mpfr, end_mpfr;
        // double elapsed_mpfr;
        // start_mpfr = clock();

        // // Vectors importation 
        // mpfr_t *v1, *v2;
        // n = import_vec_mpfr(&v1, &v2, "../data/vec1.bin");

        // // Define and initialize variables
        // mpfr_t res;
        // int k =0;
        // mpfr_init2(res,P);

        // // Dot product
        // dot_prod_mpfr(n,v1,v2,res);

        // // Results 
        // mpfr_printf ("%.41Rg \n", res);
        // end_mpfr = clock();                        
        // elapsed_mpfr = ((double)end_mpfr - start_mpfr) / CLOCKS_PER_SEC;
        // printf("Time : \n%.25f seconds \n", elapsed_mpfr);



        // C++ Data importation
        class std::vector<double> vec(2*n+1);
        // char nom[50];  
        // sprintf(nom,"../data/vector%d.bin",l);
        vec = import_vec(a,b,"../data/vector0.bin");   
        // FILE *file = fopen("../data/vector0.bin", "rb");
        // for (unsigned int i = 1; i<2*n+1;i++){
            // fread(&vec[i], sizeof(double),1, file);
        // }        
        // printf("%.49f\n", vec[0]);
        // for (unsigned int i=0;i<n;i++){
        //     a[i] = vec[i+1];
        //     b[i] = vec[n+1+i];
        // }
        
        //  Print vectors
        printf("\nREAD FILE \n");
        printf("VEC = \n");
        // for (unsigned int i=0;i<2*n+1;i++){
        //     printf("%.35f \n",vec[i]);
        // }


        // // COMMON DOT PRODUCT
        // printf("\n \nCOMMON DOT PROD : \n");
        // // Time
        // clock_t start_common, end_common;
        // double elapsed_common;
        // start_common = clock();
        // c = 0.0;
        // n = 3;
        // c = common_dot_prod(a,b,n,1,1);
        // printf("%.41f\n",c);
        // end_common = clock();                        
        // elapsed_common = ((double)end_common - start_common) / CLOCKS_PER_SEC;
        // printf("Time : \n%.25f seconds \n", elapsed_common);
        // printf("\n \n");

        
        // printf("___________________________ TEST _______________________ \n \n \n");

        // TwoProd(a,b,n,tp1,tp2);
        // printf("\n TWO PROD : \n");
        // for (unsigned int i=0;i<n;i++){
        //     printf("%.50f \n",a[i]);
        // }
        // for (unsigned int i=0;i<n;i++){
        //     printf("%.15f \n",b[i]);
        // }
        // printf("RES : \n");
        // for (unsigned int i=0;i<n;i++){
        //     printf("%.15f \n",tp1[i]);
        // }
        // printf("\n");
        // for (unsigned int i=0;i<n;i++){
        //     printf("%.15f \n",tp2[i]);
        //}
    }
    return 0;
}
