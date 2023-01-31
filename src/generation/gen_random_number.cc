#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <vector>
#include <algorithm>
#include <cassert>
#include <float.h>
#include "../../include/gen_random_number.h"

// Give us 1 vector of floating point of size nb_elem such as x[1] + x[2] + ... = sum with the require conditionement

template < class T >
void TwoSum(T a, T b, T& x, T& y);

template < class T >
T SumK(std::vector<T> p, unsigned int n, unsigned int K);

template < class T >
std::vector<T> GenSum(unsigned int n, T cond_required, T& cond, T& sum);

template < class T >
T inline round(T x){
	return ((x)>0)? (int((x)+0.5)):(int((x)-0.5));
}

template < class T >
void TwoSum(T a, T b, T& x, T& y)
{
  T z = 0.0;
  x = a + b;
  z = x - a;
  y = (a - (x - z)) + (b - z);
}

template < class T >
T SumK(std::vector<T> p, unsigned int n, unsigned int K){
  std::vector<T> tmp = p;
  T res = 0.;
  
  // Set rounding to nearest even mode	
  for(unsigned int k = 1 ; k <= K-1 ; k++){
    for(unsigned int i = 1; i < n ; i++){
      T tmp_res = 0, tmp_err = 0;
      TwoSum<T> (tmp[i], tmp[i-1], tmp_res, tmp_err);
      tmp[i] = tmp_res; tmp[i-1] = tmp_err;
    }
  }
  
  for(unsigned int i = 0; i < n ; i++)
    res += tmp[i];
 
  // Reset rounding mode
  
  return res;
}

template < class T >
std::vector<T>
GenSum(unsigned int n, T cond_required, T& cond, T& sum){
  // Initialisation

  //srand(time(NULL));
  unsigned int i;
  
  // Set rounding to nearest even mode
  
  T b = log(cond_required)/log(2.);
  T k = ceil(b/45.)+1.;
  T n2 = round(n/2.);

  std::vector<T> x(n,0);
	
  // ---------
  std::vector<T> e1(n2,0);
  for(i = 0 ; i < n2 ; i++)
    e1[i] = round((((float)rand())/RAND_MAX)*b);
  e1[0] = round(b/2.)+1.;
  e1[n2-1] = 0.;
 
  // ---------
  for(i = 0 ; i < n2 ; i++){
    T m = (2.*(((T)rand())/RAND_MAX))-1;
    x[i] = m * pow((T)2.,(int)e1[i]);
  }

  // ---------
  std::vector<T> e2(n-n2,0);
  T step = b/(n-n2-1);
  e2[0] = b;
  for(i = 1 ; i < (n-n2) ; i++)
    e2[i] = e2[i-1] - step;
  e2[n-n2-1] = 0.;
   
  for(i = n2 ; i < n ; i++){
    T m = (2.*(((T)rand())/RAND_MAX))-1;
    x[i] = m * pow((T)2.,(int)e2[i-n2]) - SumK<T> (x,n2+(i-n2),k);
  }
  
  random_shuffle(x.begin(), x.end());
  
  // Compute results
  sum = SumK<T> (x,n,k);
  cond = 0.;
  for(i = 0; i < x.size() ; i++)
    cond += fabs(x[i]);

//  assert(sum != 0.);
  if (sum != 0){
    cond /= fabs(sum);    
  }else {
	cond = 0;  
  }
  
  // Reset rounding mode
 
  return x;
}

template <class T>
void gen_fpnumber(std::vector<T> &x, int nb_elem, T required_cond, T &sum){
	T cond = 0;
	
	x = GenSum(nb_elem,required_cond,cond,sum);		
	
	while((cond < required_cond) || (fabs(sum)<FLT_MIN) || (fabs(sum)>FLT_MAX)){
		x = GenSum(nb_elem,required_cond,cond,sum);
	}
		
}

template <class T>
void gen_vec(std::vector<T> &x, std::vector<T> &y, int nb_elem, T required_cond, T &sum){
    //  c = a.*b
    class std::vector<double> c(nb_elem);
    gen_fpnumber(c,nb_elem,required_cond,sum);
    
    // a = 2.*c   b = 0.5
    for (int i = 0 ; i<nb_elem;i++) {
        x[i] = 2*c[i];
        y[i] = 0.5;
    }
}

// Instantiate the GenSum function
template void gen_fpnumber<float>  (std::vector<float> &x, int nb_elem, float required_cond, float &sum);
template void gen_fpnumber<double> (std::vector<double> &x, int nb_elem, double required_cond, double &sum);