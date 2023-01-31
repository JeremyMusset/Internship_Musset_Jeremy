#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <iomanip>
#include <ios>
#include "../../include/gen_random_number.h"

// Give us 2 vectors of floating point of size nb_elem such as a . b = sum with the require conditionement

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

// Instantiate the gen_vec function
template void gen_vec<double> (std::vector<double> &x, std::vector<double> &y, int nb_elem, double required_cond, double &sum);