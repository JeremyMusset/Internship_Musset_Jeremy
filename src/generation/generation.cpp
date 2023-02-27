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
#include "../../include/error_free.h"
#include "../../include/dot_product.h"

using namespace std;

int main() {
    double sum;
    double cond;
    int n;
    n = 3;
    sum = 150;
    cond = 10;
    int nb_gen = 2;
    vec_gen(nb_gen,n,cond,sum);
    return 0;
}