#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include "../../include/error_free.h"

// template < class T > 
// T common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy);
template double common_dot_prod<double>(std::vector<double> a, std::vector<double> b, int n, int incx, int incy);

/// @brief Common dot product (sdot lapack)
/// @tparam T Float or Double
/// @param a Vector of dimension( 1 + ( N - 1 )*abs( incy ) )
/// @param b Vector of dimension( 1 + ( N - 1 )*abs( incy ) )
/// @param n Size
/// @param incx storage spacing between elements of a
/// @param incy storage spacing between elements of b
/// @return 
template < class T > 
T common_dot_prod(std::vector<T> a, std::vector<T> b, int n, int incx, int incy){
   T stemp;
   int i, ix, iy, m, mp1;
   T sdot;
   stemp = 0.0;
   sdot = 0.0;
   if (n<=0){
      return -9999;
   }
   if (incx == 1 && incy == 1) {
      m = n%5;
      if (m != 0) {
         for (i = 0; i<m;i++) {
            stemp = stemp + a[i]*b[i];
         }
        
      }
      if (n < 5){
         sdot = stemp;
         return sdot;
      }
   
      mp1 = m + 1;
      for (i = mp1-1; i<n; i+=5) {
               stemp = stemp + a[i]*b[i] + a[i+1]*b[i+1] + a[i+2]*b[i+2] + a[i+3]*b[i+3] + a[i+4]*b[i+4] ;
      }
   }
   else {
      ix = 1;
      iy = 1;
      if (incx < 0) {
         ix = (-n + 1)*incx + 1;
      }
      if (incy < 0){
         iy = (-n + 1)*incy + 1;
      } 
      for (i=0; i<n; i++){
         stemp = stemp + a[ix]*b[iy];
         ix = ix + incx;
         iy = iy + incy;
      }
   }
   sdot = stemp;
   return sdot;
}
