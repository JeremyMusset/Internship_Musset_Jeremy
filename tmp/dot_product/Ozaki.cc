#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <cmath>
#include <algorithm>
#include <iostream>
#include <limits>
#include <omp.h>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include <stdbool.h>
#include "../../include/error_free.h"
#include "../../include/dot_product.h"


#define PREC 53    // 53 in double 
#define P 5000

template double Ozaki<double>(std::vector<double> a, std::vector<double> b, int n, int nb_threads);

template double Ozaki_par<double>(std::vector<double> a, std::vector<double> b, int n, int nb_threads);

template void Split_Ozaki<double>(std::vector<double> x, int n, int &sx, std::vector<std::vector<double>> &xsplit);


/// @brief Ozaki dot product 
/// @tparam T Float or Double
/// @param a Vector
/// @param b Vector 
/// @param n Size
/// @param sx Number of split on x
/// @param sy Number of split on y
template < class T > 
T Ozaki(std::vector<T> a, std::vector<T> b, int n, int nb_threads){
    std::vector<std::vector<T>> xsplit;
    std::vector<std::vector<T>> ysplit;
    int sx,sy;
    sx = 0;
    sy = 0;
   
    Split_Ozaki(a,n,sx,xsplit);
    Split_Ozaki(b,n,sy,ysplit);
    printf("SEQ : sx = %.d  et sy = %d \n",sx,sy);    
    std::vector<T> res(sx*sy);
    double result = 0;
    for (unsigned int k = 0; k<sy;k++) {
        for (unsigned int q = 0; q<sx;q++) {
            for (unsigned int z = 0; z < n ; z++){
                res[k*sy + q] += xsplit[q][z] * ysplit[k][z];
            } 
        }
    }
      
    result = SumK(res,sx*sy,10);
    return result;
}



/// @brief Ozaki split
/// @tparam T Float or Double
/// @param x Vector
/// @param n Size
/// @param sx Number of split on x
template < class T > 
void Split_Ozaki(std::vector<T> x,int n, int &sx,std::vector<std::vector<T>> &xsplit){
    xsplit.push_back(std::vector<double>(n));
    xsplit.push_back(std::vector<double>(n));
    double u = pow(2,-53);
    std::vector<T> tmp(n);
    int i = 0;
    double c1, c2, t, r;
    c1 = ceil((log2(1/u) + log2(n))/2);
    auto maxElement = std::max_element(x.begin(), x.end());
    double maxValue = *maxElement;
    c2 = std::abs(maxValue);     
    while (c2 !=0) 
    {
        xsplit.push_back(std::vector<double>(n));
        r = ceil(log2(c2));        
        t = std::pow(2, c1 + r);
        for (unsigned int j=0;j<n;j++) {
            xsplit[i][j] = ((x[j] + t) - t);
            x[j] = x[j] - xsplit[i][j];
        }
        auto maxElement = std::max_element(x.begin(), x.end());
        double maxValue = *maxElement;
        c2 = std::abs(maxValue);      
        i+=1;
    }
    sx=i+1;
}


/// @brief Ozaki dot product 
/// @tparam T Float or Double
/// @param x Vector
/// @param y Vector 
/// @param n Size
/// @param sx Number of split on x
/// @param sy Number of split on y
template < class T > 
T Ozaki_par(std::vector<T> x, std::vector<T> y, int n, int nb_threads){
    int mod = n%nb_threads;
    class std::vector<double> Result_global;
    if (n < nb_threads){
        nb_threads = n;
    }
    mpfr_t loc1,loc2;   
    mpfr_init2(loc1, P);
    mpfr_set_d(loc1, 0, MPFR_RNDN);
    mpfr_init2(loc2, P);
    mpfr_set_d(loc2, 0, MPFR_RNDN); 
    #pragma omp parallel num_threads(nb_threads) shared(x,y)
    {
        /////////////////// Pre ///////////////////

        int LT = omp_get_thread_num();
        int size_local = ceil ((float)n/nb_threads);
        int start = (floor((float)n/nb_threads)) * LT + std::min(mod,LT);
        if ((LT >= mod) && (mod != 0)) {
            size_local -= 1;
        }
        int end = start + size_local - 1 ;
        printf("Thread number %d    size : %d     start = %d        end = %d \n",LT,size_local,start,end);

        std::vector<std::vector<T>> xsplit;
        std::vector<std::vector<T>> ysplit;
        T res_local; 
        double* x_ptr = x.data();
        double* y_ptr = y.data();
        int sx,sy;    
        sx = 0;
        sy = 0;

        /////////////////// End Pre ///////////////////
        


        /////////////////// Split ///////////////////

        // Split x 
        xsplit.push_back(std::vector<double>(size_local));
        xsplit.push_back(std::vector<double>(size_local));
        double u = pow(2,-53);
        std::vector<T> tmp(size_local);
        int i = 0;
        for (unsigned int j=start;j<=end;j++) {
            printf("th number %d %.20f \n",LT, x[j]);
        }
        double c1, c2, t, r;
        c1 = ceil((log2(1/u) + log2(size_local))/2);
        auto maxElement = std::max_element(x.begin() + start , x.begin() + end + 1 );
        double maxValue = *maxElement;
        c2 = std::abs(maxValue);   
        while (c2 !=0) 
        {   
            xsplit.push_back(std::vector<double>(size_local));
            r = ceil(log2(c2));        
            t = std::pow(2, c1 + r);
            int k=0;
            // #pragma omp parallel for 
            for (unsigned int j=start;j<=end ;j++) {
                xsplit[i][k] = ((x[j] + t) - t);
                x[j] = x[j] - xsplit[i][k];
                k = k+1;
            }
            maxElement = std::max_element(x.begin() + start , x.begin() + end + 1 );
            maxValue = *maxElement;
            c2 = std::abs(maxValue);      
            i+=1;
        }
        sx=i+1;

        // Split y
        ysplit.push_back(std::vector<double>(n));
        ysplit.push_back(std::vector<double>(n));
        i = 0;
        maxElement = std::max_element(y.begin() + start , y.begin() + end + 1 );
        maxValue = *maxElement;
        c2 = std::abs(maxValue);     
        while (c2 !=0) 
        {
            ysplit.push_back(std::vector<double>(n));
            r = ceil(log2(c2));        
            t = std::pow(2, c1 + r);
            int k=0;
            // #pragma omp parallel for 
            for (unsigned int j=start;j<=end;j++) {
                ysplit[i][k] = ((y[j] + t) - t);
                y[j] = y[j] - ysplit[i][k];
                k = k+1;
            }
            maxElement = std::max_element(y.begin() + start , y.begin() + end + 1 );
            maxValue = *maxElement;
            c2 = std::abs(maxValue);      
            i+=1;
        }
        sy=i+1;
        x[0]=26082000;

    /////////////////// End split ///////////////////


    /////////////////// Compute local dots and gather ///////////////////
    
        mpfr_t tmp1;
        mpfr_init2(tmp1, P);
        mpfr_set_d(tmp1, 0, MPFR_RNDN);
        for (unsigned int k = 0; k<sy;k++) {
            for (unsigned int q = 0; q<sx;q++) {
                res_local = 0;
                for (unsigned int z = 0; z < n ; z++){
                    res_local += xsplit[q][z] * ysplit[k][z];
                } 
                     
                // printf("res local %.30f \n",res_local);
                Result_global.push_back(res_local);

               
                mpfr_t res_mpfr;
                // mpfr_t *a_mpfr = new mpfr_t[size_local];
                // mpfr_t *b_mpfr = new mpfr_t[size_local];
                // for (unsigned int i = 0; i < size_local; i++){
                //     mpfr_init2(a_mpfr[i], P);
                //     mpfr_set_d(a_mpfr[i], xsplit[q][i], MPFR_RNDN);
                //     mpfr_init2(b_mpfr[i], P);
                //     mpfr_set_d(b_mpfr[i], ysplit[k][i], MPFR_RNDN);
                // } 
                mpfr_init2(res_mpfr,P);
                mpfr_set_d(res_mpfr,res_local,MPFR_RNDN);
 
                // dot_prod_mpfr(size_local,a_mpfr,b_mpfr,res_mpfr);
                mpfr_add(tmp1,res_mpfr,tmp1,MPFR_RNDN);
            }
        }                
        if(LT == 0) {
            mpfr_add(loc1,loc1,tmp1,MPFR_RNDN);
        }
        if(LT == 1) {
            mpfr_add(loc2,loc2,tmp1,MPFR_RNDN);
        }
    /////////////////// End local dots and gather ///////////////////



    } // End parallel
    mpfr_add(loc2,loc2,loc1,MPFR_RNDN);
    double round = mpfr_get_d(loc2, MPFR_RNDN);
    printf("Round = %.30f",round);
    mpfr_printf("Res = %.60Rg\n",loc2);
        
    double sz = Result_global.size();
    double result = SumK(Result_global,sz,10);
    // double result = 0;
    return result;
}

