#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/test.h"

#define P 4000
int main() {
    int n, seq_number_common, nb_gen, seq_number_blaspp, seq_number_mkl, nb_threads, ok;
    double cond, sum, Time;
    struct timespec start, end;
    mpfr_t eps;
    mpfr_init2(eps, P);
    // eps = 0.1
    mpfr_set_d(eps, 0.1, MPFR_RNDN);
    // eps = 10^-3
    mpfr_pow_si(eps, eps, 2, MPFR_RNDN);
    n = 100000;                         //  n = 10 000 => 800 tests / min      n = 100 000 => 10 tests / min           n = 1 000 000 =>  less than 1 tests / 3 hours
    nb_gen = 206;
    nb_threads = 7;
    cond = 5;
    sum = 100;
    ok = 0;
    if (nb_threads > n){
        nb_threads = n;
    }

    class std::vector<double> a(n);
    class std::vector<double> b(n);

    seq_number_common = 0;
    seq_number_blaspp = 0;
    seq_number_mkl = 0;

    for (unsigned int i; i<nb_gen;i++){
        if (i % 2 == 0){
            printf("\n________________________________ Test number %d ________________________________ \n",i);
        }

        clock_gettime(CLOCK_REALTIME,&start);
        generate_v(a,b,n,cond,sum);
        test2_seq_dot_prod(a,b,n, cond, seq_number_common,seq_number_mkl, seq_number_blaspp,sum,i, eps);
        clock_gettime(CLOCK_REALTIME,&end);
        Time = (double)(end.tv_sec - start.tv_sec);
        if (i % 2 == 0){
            printf("\n________________________________ Test number %d   |   Time : %.10f ________________________________ \n",i,Time);
        }
    }


    if (seq_number_common != 0){
        ok = 1;
        printf("\n--------  %d ERROR WITH SEQUENTIAL COMMON DOT PRODUCT --------\n", seq_number_common);
    }
    if (seq_number_blaspp != 0){
        ok = 1;
        printf("--------  %d ERROR WITH SEQUENTIAL  DOT PRODUCT  --------\n", seq_number_blaspp);
    }
    if (seq_number_mkl != 0){
        ok = 1;
        printf("--------  %d ERROR WITH SEQUENTIAL MKL DOT PRODUCT  --------\n", seq_number_mkl);
    }
    

    if (ok ==0){
        printf("\n\n\n\n--------------------------------  NO ERROR  --------------------------------\n\n\n\n");
    }


}