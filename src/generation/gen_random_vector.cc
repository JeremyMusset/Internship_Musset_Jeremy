#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <vector>
#include <fstream>      
#include <algorithm>
#include <cassert>
#include <float.h>
#include "../../include/gen_random_number.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"

#define SMAX 25      // 20 + a with a such as nb of files = 10^a

// Give us n vector of floating point of size nb_elem such as |x[1]| + |x[2]| + ... = sum with the require conditionement
template void import_vec<double> (std::vector<double> &vec, unsigned int l);

template void vec_gen<double> (int nb_gen, int size, double cond, double sum);

template void generate_v<double> (std::vector<double> &x, std::vector<double> &y, int nb_elem, double required_cond, double &sum);

template void gen_fpnumber<float>  (std::vector<float> &x, int nb_elem, float required_cond, float &sum);
template void gen_fpnumber<double> (std::vector<double> &x, int nb_elem, double required_cond, double &sum);

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


/// @brief  Give us 2 vectors of floating point of size nb_elem such as |a| . |b| = sum with the require conditionement
/// @tparam T Float or Double
/// @param x Vector a 
/// @param y Vector b
/// @param nb_elem 
/// @param required_cond 
/// @param sum 
template <class T>
void generate_v(std::vector<T> &x, std::vector<T> &y, int nb_elem, T required_cond, T &sum){

    T cond;
    unsigned int i;
    //  c = a.*b
    class std::vector<double> c(nb_elem);
    gen_fpnumber(c,nb_elem,required_cond,sum);

    // While conditionning isn't respect 
    while((cond < required_cond) || (fabs(sum)<FLT_MIN) || (fabs(sum)>FLT_MAX)){
		
      // t random
      double t = 0;
      double min = 0;
      double max = 100;
      srand( time( NULL ) );
      t = ((double)(rand() % 1000) +1)/100.0;

      // x = t.*c   y = 1/t
      for (int i = 0 ; i<nb_elem;i++) {
          x[i] = t*c[i];
          y[i] = (1/t);
      }

      // Compute conditioning
      cond = 0.;
      T b = log(required_cond)/log(2.);
      T k = ceil(b/45.)+1.;
      sum = SumK<T> (x,nb_elem,k);
      for(i = 0; i < x.size() ; i++)
        cond += fabs(x[i]);

      if (sum != 0){
        cond /= fabs(sum);    
      }else {
      cond = 0;  
      }
    }
}


/// @brief Generate nb_vec files with vectors of size n 
/// @tparam T Double or Float
/// @param nb_gen Number of vectors
/// @param size Size of vectors
/// @param cond Conditioning required
/// @param sum Sum of absolute values
template <class T>
void vec_gen(int nb_gen,int size, T cond,T sum){
  // We generate "nb_gen" time
  for (unsigned int l=0;l<nb_gen;l++){

    // Generate vectors
    class std::vector<double> a(size);
    class std::vector<double> b(size);
    generate_v(a,b,size,cond,sum);

    // Regroup vector
    class std::vector<double> data(2*size+1);
    data[0] = size;
    for (unsigned int i=0;i<size;i++) {
        data[i+1] = a[i];
        data[i+size+1] = b[i];
    }

    // Write into binary file
    FILE * fichier;
    char name[50];  
    sprintf(name,"../src/data/vector%d.bin",l);
    std::ofstream file(name, std::ios::binary);
    file.write(reinterpret_cast<char*>(data.data()), data.size() * sizeof(double));
    file.close();
  }
}

/// @brief Transform binary file into vectors
/// @tparam T Double or Float
/// @param vec Vector of size 2*n+1
/// @param l file number l
template <class T>
void import_vec(std::vector<T> &vec, unsigned int l){
    char nom[SMAX];  
    sprintf(nom,"../src/data/vector%d.bin",l);
    std::ifstream input_file(nom, std::ios::binary);
    if (!input_file) {
        std::cerr << "Could not open binary_file.bin" << std::endl;
    }
    double number;
    while (input_file.read(reinterpret_cast<char*>(&number), sizeof(number))) {
        vec.push_back(number);
    }
    input_file.close(); 
}




