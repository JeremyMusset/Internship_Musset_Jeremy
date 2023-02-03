#include <stdio.h>
#include <cstdlib>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include <random>
#include <fstream>
#include "../../include/gen_random_number.h"

using namespace std;

int main() {
    double sum;
    double cond;
    int n;
    n = 3;
    sum = 150;
    cond = 0.1;
    int nb_gen = 2;

    // On genere "nb_gen" vecteurs
    for (unsigned int l=0;l<nb_gen;l++){

        // Generation des vecteurs
        class std::vector<double> a(n);
        class std::vector<double> b(n);
        gen_vec(a,b,n,cond,sum);

        for (int i = 0 ; i<n;i++) {
            a[i] = 0.2;
            b[i] = 0.3;
        }
        


        // On recupere tout dans un vecteur et on l'ecrit dans un fichier binaire
        class std::vector<double> data(2*n+1);
        data[0] = n;
        for (unsigned int i=0;i<n;i++) {
            data[i+1] = a[i];
            data[i+n+1] = b[i];
        }
        printf("Le vecteur suivant sera enregistré : \n");
        for (unsigned int j=0;j<2*n+1;j++){
            printf("%.49f\n",data[j]);
        }

        // Ecriture dans fichier binaire
        FILE * fichier;
        char nom[50];  
        sprintf(nom,"../data/vector%d.bin",l);
        ofstream f (nom, ios::out | ios::binary);
    
        f.write((char*)&data , (2*n+1)*sizeof(double));

        
    }
    return 0;
}