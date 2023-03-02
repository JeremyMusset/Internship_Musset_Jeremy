#include <cmath>
#include <mkl.h>
#include "/home/jerem/app/blaspp/include/blas/dot.hh"
#include "../../include/dot_product.h"

using namespace std;

int main(){
    int n=10000;
    // double *a;
    // a = (double *) malloc(n*sizeof(double)); 
    // double *b;
    // b = (double *) malloc(n*sizeof(double)); 

    class std::vector<double> a(n);
    class std::vector<double> b(n);


    for (unsigned int i = 0; i<n;i++){
        a[i] = 0.3;
        b[i] = 0.2;
    }
    double res_standard, res_mkl,res_blaspp;

    ////////////////////////////////////////////////////////////////////
    ///////////////////// serial DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////
    res_standard =0;
    for (unsigned int j=0; j<n;j++){
            res_standard += a[j]*b[j];
    }

    ////////////////////////////////////////////////////////////////////
    ///////////////////// MKL DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////


    // res_mkl = cblas_ddot(n,a,1,b,1);

    
    ////////////////////////////////////////////////////////////////////
    ///////////////////// BLASPP DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////
  
    
    // res_blaspp = blas::dot(n,a,1,b,1);
    return 0;
}