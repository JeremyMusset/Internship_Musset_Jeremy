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
    n = 10;
    std::vector<T> vec(1000);
    ifstream fichier(fic, ios::in | ios::binary );
    if(fichier){
        string ligne;
        while(getline(fichier, ligne))  // tant que l'on peut acceder à la ligne
        {   
            char caractere;  
            fichier.get(caractere);

            if (k==0){                  // First line
                n = stoi(ligne);
                std::vector<T> vec(n);

            }
            if (k>=1 && k<=n){           // Vector a
                vec[k] = stod(ligne);
            }
            if (k>n){                   // Vector b
                vec[k] = stod(ligne);
            }
        k = k+1;        
        }
    }
    else {
        cerr << "Impossible d'ouvrir le fichier !" << endl;
    }
    vec[0] = n;
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
    cond = 5;
    class std::vector<double> vec(2*n+1);
    class std::vector<double> a(n);
    class std::vector<double> b(n);
    class std::vector<double> tp1(n);
    class std::vector<double> tp2(n);


    // Use MPFR_dot product 
    printf("\n \nCORRECT ROUNDING : \n");
    // Time
    clock_t start_mpfr, end_mpfr;
    double elapsed_mpfr;
    start_mpfr = clock();

    // Vectors importation 
    mpfr_t *v1, *v2;
    n = import_vec_mpfr(&v1, &v2, "../data/vec1.bin");

    // Define and initialize variables
    mpfr_t res;
    int k =0;
    mpfr_init2(res,P);

    // Dot product
    dot_prod_mpfr(n,v1,v2,res);

    // Results 
    mpfr_printf ("%.41Rg \n", res);
    end_mpfr = clock();                        
    elapsed_mpfr = ((double)end_mpfr - start_mpfr) / CLOCKS_PER_SEC;
    printf("Time : \n%.25f seconds \n", elapsed_mpfr);



    // C++ Data importation
    vec = import_vec(a,b,"../data/vec1.txt");    // Swap into binari file
    for (unsigned int i=0;i<n;i++){
        a[i] = vec[i+1];
        b[i] = vec[n+1+i];
    }

    //  Print vectors
    // printf("\nREAD FILE \n");
    // printf("VEC = \n");
    // for (unsigned int i=0;i<2*n+1;i++){
    //     printf("%.35f \n",vec[i]);
    // }

    // printf("\nn = %d\n",n);

    // printf("a = \n");
    // for (unsigned int i=0;i<n;i++){
        // printf("%.35f \n",a[i]);
    // }

    // printf("b = \n");
    // for (unsigned int i=0;i<n;i++){
        // printf("%.35f \n",b[i]);
    // }

    // COMMON DOT PRODUCT
    printf("\n \nCOMMON DOT PROD : \n");
    // Time
    clock_t start_common, end_common;
    double elapsed_common;
    start_common = clock();
    c = 0.0;
    n = vec[0];
    c = common_dot_prod(a,b,n,1,1);
    printf("%.41f\n",c);
    end_common = clock();                        
    elapsed_common = ((double)end_common - start_common) / CLOCKS_PER_SEC;
    printf("Time : \n%.25f seconds \n", elapsed_common);
    printf("\n \n");

    
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
    
    return 0;
}
