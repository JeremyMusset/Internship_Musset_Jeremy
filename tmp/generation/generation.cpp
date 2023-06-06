#include <stdio.h>
#include <cstdlib>
#include <cmath>
#include <vector>
#include <fstream>    
#include <algorithm>
#include <cassert>
#include <float.h>
#include <cstdlib>
#include <vector>
#include <iostream>
#include <ios>
#include <random>

using namespace std;

int main() {
    int nb_gen =10;
    int size = 1e8;

    // We generate "nb_gen" time
    for (unsigned int l=0;l<nb_gen;l++){
    printf("~~~~~~~~~~~~~~~~~~~~~~~~~ GENERATION OF DATA N°%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n",l);
    // Generate vectors
    class std::vector<double> data(2*size+1);
    data[0] = size;

    for (unsigned int i=1;i<2*size+1;i++) {
      std::random_device rd;
      std::mt19937 gen(rd());

      // Définir la distribution des nombres aléatoires
      std::uniform_real_distribution<double> dist(0.0, 4.0);

      // Générer un nombre aléatoire
      data[i] = dist(gen) - 2;
      if ((i-1)%1000000 == 0){
            printf("i = %d    a = %.30f\n",i-1,data[i-1]);
        }
    }  
   
    // Write into binary file
    FILE * fichier;
    char name[500000];  
    sprintf(name,"../data/vector%d.bin",l);
    std::ofstream file(name, std::ios::binary);
    file.write(reinterpret_cast<char*>(data.data()), data.size() * sizeof(double));
    file.close();
  }
    return 0;
}