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
int import_vec( std::vector<T> a, std::vector<T> b, string fic)
{
    int n;
    std::vector<T> a2 ;
    std::vector<T> b2;
    int k = 0;
    n = 10;
    ifstream fichier("../data/vec1.txt", ios::in);
    if(fichier){
        string ligne;
        while(getline(fichier, ligne))  // tant que l'on peut acceder à la ligne
        {   
            char caractere;  
            fichier.get(caractere);

            if (k==0){                  // First line
                n = stoi(ligne);
                printf("n = %d\n",n);
                 cout << std::stof(ligne) << endl;
                printf(" k = %d \n",k);
                
                printf(" k = %d \n",k);

            }
            if (k>=1 && k<=n){           // Vector a
                a[k-1] = stof(ligne);
                printf("Passe dans boucle a avec k = %d   ",k);
                cout << std::stof(ligne) << endl;
            }
            if (k>n){                   // Vector b
                b[k-n-1] = std::stof(ligne);
                printf("Passe dans boucle b avec k = %d   ",k);
                 cout << std::stof(ligne) << endl;
            }

                cout << std::stof(ligne) << endl;  // on l'affiche
        k = k+1;        
        }
    }
    else {
        cerr << "Impossible d'ouvrir le fichier !" << endl;
    }
    printf("n = %d",n);
    return a,b,n;
}


int main() {
    double sum;
    double cond;
    double c;
    int n;
    n = 8;
    sum = 150;
    cond = 5;
  
    class std::vector<double> a(n);
    class std::vector<double> b(n);
    class std::vector<double> tp1(n);
    class std::vector<double> tp2(n);
    a,b,n = import_vec(a,b,"../data/vec1.txt");
    printf("\n READ FILE \n");
    printf("n = %d\n",n);
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",a[i]);
    }
    for (unsigned int i=0;i<n;i++){
        printf("%.15f \n",b[i]);
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
        printf("%.15f \n",a[i]);
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
