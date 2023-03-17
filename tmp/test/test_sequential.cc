#include <cmath>
#include "../../include/test.h"
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"

using namespace std;

#define P 4000
#define NB_EXEC 20
#define SMAX 500

template void test_seq_dot_prod<double>(std::vector<double> a,std::vector<double> b,int n, double required_cond, int &seq_number_common,int &seq_number_rare_hybrid,int &seq_number_rare_online, double sum, int l,  mpfr_t eps);


/// @brief Test for sequential dot product
/// @tparam T Float or double
/// @param a_global vector a
/// @param b_global vector b
/// @param n size of a
/// @param required_cond conditioning
/// @param number Error number
/// @param sum sum
template < class T >
void test_seq_dot_prod(std::vector<T> a,std::vector<T> b,int n,double required_cond,int &seq_number_common,int &seq_number_rare_hybrid,int &seq_number_rare_online, double sum, int l, mpfr_t eps){

       
    // Error
    mpfr_t Err_common,Err_rare_blas_hybrid,Err_rare_blas_online,Err_ozaki,Err_ex_blas;
    mpfr_init2(Err_common, P);
    mpfr_init2(Err_rare_blas_hybrid, P);
    mpfr_init2(Err_rare_blas_online, P);
    mpfr_init2(Err_ozaki, P);
    mpfr_init2(Err_ex_blas, P);
    mpfr_set_d(Err_common, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas_hybrid, 0, MPFR_RNDN);
    mpfr_set_d(Err_rare_blas_online, 0, MPFR_RNDN);
    mpfr_set_d(Err_ozaki, 0, MPFR_RNDN);
    mpfr_set_d(Err_ex_blas, 0, MPFR_RNDN);



    double res_common,res_rare_blas_hybrid, res_rare_blas_online;
    class std::vector<double> data(2*n+1);
    data[0] = n;

    //////////////////////////////////////////////////////////////////
    //////////////////////// MPFR_dot product ////////////////////////
    //////////////////////////////////////////////////////////////////

    mpfr_t res_mpfr;
    mpfr_t a_mpfr[n], b_mpfr[n];
    for (unsigned int i = 0; i < n; i++){
        mpfr_init2(a_mpfr[i], P);
        mpfr_set_d(a_mpfr[i], a[i], MPFR_RNDN);
        mpfr_init2(b_mpfr[i], P);
        mpfr_set_d(b_mpfr[i], b[i], MPFR_RNDN);
    } 
    mpfr_init2(res_mpfr,P);
    mpfr_set_d(res_mpfr,0,MPFR_RNDN);
    dot_prod_mpfr(n,a_mpfr,b_mpfr,res_mpfr);



        
    ////////////////////////////////////////////////////////////////////
    //////////////////////// COMMON DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    struct timespec start_common, end_common;
    res_common = 0.0;
    res_common = common_dot_prod(a,b,n,1,1);


    ////////////////////////////////////////////////////////////////////
    ///////////////////// RARE-BLAS DOT PRODUCT ////////////////////////
    ////////////////////////////////////////////////////////////////////

    res_rare_blas_hybrid = 0.0;
    res_rare_blas_online = 0.0;

    res_rare_blas_hybrid = Rare_blas_dot_prod_hybrid(a,b,n); 

    res_rare_blas_online = Rare_blas_dot_prod_online(a,b,n);

    
    // Print results
    // mpfr_printf ("\n SEQUENTIAL CORRECT ROUNDING : \n%.41Rg \n", res_mpfr);
    // printf ("\n SEQUENTIAL COMMON DOT PRODUCT : \n%.41f \n", res_common);
    // printf ("\n SEQUENTIAL RARE BLAS HYBRID DOT PRODUCT : \n%.41f \n\n", res_rare_blas_hybrid);    
    //  printf ("\n SEQUENTIAL RARE BLAS ONLINE DOT PRODUCT : \n%.41f \n\n", res_rare_blas_online);  

    // Error
    mpfr_t tmp,tmp2,tmp3;
    mpfr_init2(tmp, P);
    mpfr_init2(tmp2, P);
    mpfr_init2(tmp3, P);

    mpfr_sub_d(tmp,res_mpfr,res_common,MPFR_RNDN);
    mpfr_div(tmp,tmp,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp,tmp,MPFR_RNDN);
    mpfr_add(Err_common, Err_common,tmp,MPFR_RNDN);

    mpfr_sub_d(tmp2,res_mpfr,res_rare_blas_hybrid,MPFR_RNDN);
    mpfr_div(tmp2,tmp2,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp2,tmp2,MPFR_RNDN);
    mpfr_add(Err_rare_blas_hybrid, Err_rare_blas_hybrid,tmp2,MPFR_RNDN);

    mpfr_sub_d(tmp3,res_mpfr,res_rare_blas_online,MPFR_RNDN);
    mpfr_div(tmp3,tmp3,res_mpfr,MPFR_RNDN);
    mpfr_abs(tmp3,tmp3,MPFR_RNDN);
    mpfr_add(Err_rare_blas_online, Err_rare_blas_online,tmp3,MPFR_RNDN);


    if (mpfr_cmp(Err_common, eps) >= 0) {
        seq_number_common +=1;

        for (unsigned int i=0;i<n;i++) {
            data[i+1] = a[i];
            data[i+n+1] = b[i];
        }  
        // Write into binary file
        FILE * fichier;
        char name[SMAX];  
        sprintf(name,"./Error/sequential/common/vector%d.bin",l);
        std::ofstream file(name, std::ios::binary);
        file.write(reinterpret_cast<char*>(data.data()), data.size() * sizeof(double));
        file.close();
    }
    if(mpfr_cmp(Err_rare_blas_hybrid, eps) >= 0 ) {
        seq_number_rare_hybrid +=1;

        for (unsigned int i=0;i<n;i++) {
            data[i+1] = a[i];
            data[i+n+1] = b[i];
        }  
        // Write into binary file
        FILE * fichier;
        char name[SMAX];  
        sprintf(name,"./Error/sequential/rare_blas_hybrid/vector%d.bin",l);
        std::ofstream file(name, std::ios::binary);
        file.write(reinterpret_cast<char*>(data.data()), data.size() * sizeof(double));
        file.close();

    }
    if( mpfr_cmp(Err_rare_blas_online, eps) >= 0) {
        seq_number_rare_online +=1;

        for (unsigned int i=0;i<n;i++) {
            data[i+1] = a[i];
            data[i+n+1] = b[i];
        }  
        // Write into binary file
        FILE * fichier;
        char name[SMAX];  
        sprintf(name,"./Error/sequential/rare_blas_online/vector%d.bin",l);
        std::ofstream file(name, std::ios::binary);
        file.write(reinterpret_cast<char*>(data.data()), data.size() * sizeof(double));
        file.close();
    }
}