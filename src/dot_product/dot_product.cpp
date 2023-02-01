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
#include "../../include/error_free.h"
using namespace std;


template < class T >
std::vector<T> import_vec( std::vector<T> a, std::vector<T> b, string fic){
    int n;
    int k = 0;
    n = 10;
    std::vector<T> vec(1000);
    ifstream fichier(fic, ios::in);
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

    // Data importation
    vec = import_vec(a,b,"../data/vec1.txt");
    printf("\nREAD FILE \n");
    printf("VEC = \n");
    for (unsigned int i=0;i<2*n+1;i++){
        printf("%.35f \n",vec[i]);
    }

    n = vec[0];
    printf("\nn = %d\n",n);

    printf("\na = \n");
    for (unsigned int i=0;i<n;i++){
        a[i] = vec[i+1];
        printf("%.35f \n",a[i]);
    }

    printf("\nb = \n");
    for (unsigned int i=0;i<n;i++){
        b[i] = vec[n+1+i];
        printf("%.35f \n",b[i]);
    }


    for (unsigned int i=0;i<n;i++) {
        a[i] = 0.2;
        b[i] = 0.3;
    }
    c = 0.6 * n;
    // Use MPFR_dot product 
    printf("\n \nCORRECT ROUNDING : ");
    c = 0.0;
    c = common_dot_prod(a,b,n,1,1);
    printf("%.15f",c);
    
    // Test the common dot product
    printf("\n \nCOMMON PROD : ");
    c = 0.0;
    c = common_dot_prod(a,b,n,1,1);
    printf("%.15f",c);
    printf("\n \n");
    printf("___________________________ TEST _______________________ \n \n \n");

    TwoProd(a,b,n,tp1,tp2);
    printf("\n TWO PROD : \n");
    for (unsigned int i=0;i<n;i++){
        printf("%.50f \n",a[i]);
    }
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",b[i]);
    }
    printf("RES : \n");
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",tp1[i]);
    }
    printf("\n");
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",tp2[i]);
    }
    
    return 0;
}
