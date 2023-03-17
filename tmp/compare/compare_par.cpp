#include <cmath>
#include <mkl.h>
#include "/home/jerem/app/blaspp/include/blas/dot.hh"
#include "../../include/dot_product.h"


using namespace std;

int main(){
    int n=1000000;
    int k = 1;
    int f = 1;
    // while (k==1){
        // printf("Essai n°%d \n",f);
    double *a;
    a = (double *) malloc(n*sizeof(double)); 
    double *b;
    b = (double *) malloc(n*sizeof(double)); 

    // class std::vector<double> a(n);
    // class std::vector<double> b(n);

     for (unsigned int i = 0; i<n;i++){
        a[i] = 0.2;
        b[i] = 0.3;
    }


    // for (unsigned int i = 0; i<n;i++){
    //     double t1 = 1;
    //   std::random_device rd;  // Initialise the distribution
    //   std::mt19937 gen(rd()); // Generate random numbers
    //   std::uniform_int_distribution<> dis(-1000000000, 1000000000); // Uniform distribution between -1000 and 1000
    //   t1 = dis(gen)/1000000.0;

    // double t2 = 1;
    //   t2 = dis(gen)/10000.0;
    //     a[i] = t1;
    //     b[i] = t2;
    // }
    double res_standard,res_standard2,res_common, res_mkl,res_blaspp;




    ////////////////////////////////////////////////////////////////////
    ///////////////////// serial DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////
    // res_standard = 0;
    // for (unsigned int j=0; j<n;j++){
    //         res_standard += a[j]*b[j];
    // }


    ////////////////////////////////////////////////////////////////////
    ///////////////////// common DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////
    // res_standard = 0;
    // res_common = par_common_dot_prod(a,b,n,1,1,8);
    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// MKL DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////


    // res_mkl = cblas_ddot(n,a,1,b,1);

    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// BLASPP DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////
  
    
    res_blaspp = blas::dot(n,a,1,b,1);


    // res_standard = 0;
    // for (int j =0;j<n;j++){
    //     res_standard += a[j] * b[j];
    // }
    // for (int i = 0;i<20;i++){
    //     res_standard2 = 0;
    //     for (int j =0;j<n;j++){
    //         res_standard2 += a[j] * b[j];
    //     }
        

    //     if (res_standard2 != res_standard){
    //         printf("\n------ Essai numero %d -------\n",i);
    //          printf("1 : %.30f\n",res_standard);
    //         printf("2 : %.30f\n",res_standard2);
    //         k = 0;
    //     }
    // }
    //    f +=1;
    // }
    return 0;
}