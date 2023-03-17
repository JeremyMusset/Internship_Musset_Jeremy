#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/test.h"

#define P 4000
int main() {
    int n, seq_number_common, nb_gen, seq_number_rare_hybrid, seq_number_rare_online,par_number_common, par_number_rare_hybrid, par_number_rare_online, nb_threads, ok;
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
    seq_number_rare_hybrid = 0;
    seq_number_rare_online = 0;
    par_number_common = 0;
    par_number_rare_hybrid = 0;
    par_number_rare_online = 0;

    for (unsigned int i; i<nb_gen;i++){
        if (i % 2 == 0){
            printf("\n________________________________ Test number %d ________________________________ \n",i);
        }

        clock_gettime(CLOCK_REALTIME,&start);
        generate_v(a,b,n,cond,sum);
        test_seq_dot_prod(a,b,n, cond, seq_number_common,seq_number_rare_hybrid, seq_number_rare_online,sum,i, eps);
        test_par_dot_prod(a,b,n, cond, par_number_common,par_number_rare_hybrid, par_number_rare_online,nb_threads,sum,i, eps);
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
    if (seq_number_rare_hybrid != 0){
        ok = 1;
        printf("--------  %d ERROR WITH SEQUENTIAL RARE BLAS HYBRID DOT PRODUCT  --------\n", seq_number_rare_hybrid);
    }
    if (seq_number_rare_online != 0){
        ok = 1;
        printf("--------  %d ERROR WITH SEQUENTIAL RARE BLAS ONLINE DOT PRODUCT  --------\n", seq_number_rare_online);
    }
    if (par_number_common != 0){
        ok = 1;
        printf("--------  %d ERROR WITH PARALLEL COMMON DOT PRODUCT  --------\n", par_number_common);
    }
    if (par_number_rare_hybrid != 0){
        ok = 1;
        printf("--------  %d ERROR WITH PARALLEL RARE BLAS HYBRID DOT PRODUCT  --------\n", par_number_rare_hybrid);
    }
    if (par_number_rare_online != 0){
        ok =1;
        printf("--------  %d ERROR WITH PARALLEL RARE BLAS ONLINE DOT PRODUCT  --------\n", par_number_rare_online);
    }

    if (ok ==0){
        printf("\n\n\n\n--------------------------------  NO ERROR  --------------------------------\n\n\n\n");
    }


}