#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include <omp.h>

using namespace std;

#define P 150
#define SMAX 25      // 20 + a with a such as nb of files = 10^a
#define NB_EXEC 20   // number of execution of each dot product to compute the performance.


int main() {
    double res, res_rare;
    double glores, gloerr;
    int i;
    int n=5;
    int nb_threads=4;
    std::vector<double> a(n);
    std::vector<double> b(n);
    for (int i =0; i<n;i++){
        a[i] = i;
        b[i] = i+1;
    }
    res = 40;

    double testhy;    
    testhy = Rare_blas_dot_prod_hybrid(a,b,n);
    printf("SEQUENTIAL TESTS : \ntest hybrid : %.20f \n",testhy);

    double teston;
    teston = Rare_blas_dot_prod_online(a,b,n);
    printf("test online : %.20f \n \n \nPARALLEL TEST : \n",teston);



    ////////////////////////////////////////////// PARALLEL /////////////////////////////////////////////////
    int NBT = 7;
    int mod = n%NBT;

    class std::vector<double> Result_global(NBT);
    class std::vector<double> Error_global(NBT);
    
    #pragma omp parallel num_threads(NBT) shared(a,b)
    {
        int LT = omp_get_thread_num();
        int size_local = ceil ((float)n/NBT);
        int start = (floor((float)n/NBT)) * LT + min(mod,LT);
        if ((LT >= mod) && (mod != 0)) {
            size_local -= 1;
        }
        int end = start + size_local - 1 ;
        // printf("Thread number %d    size : %d     start = %d        end = %d \n",LT,size_local,start,end);

        double* tp1 = new double[size_local];
        double* tp2 = new double[size_local];
        double* ah = new double[size_local];
        double* al = new double[size_local];
        double* bh = new double[size_local];
        double* bl = new double[size_local];
        double* c = new double[size_local];
        double* Ch = new double[2048];
        double* Cl = new double[2048];
        for (unsigned int k=0;k<2048;k++){
            Ch[k] = 0;
            Cl[k] =0;
        }
        
        double Res = 0.;
        double Err = 0.;
        double ph;
        double pl;
        int exp;
        int E;
        double error;
        double tmpdb;
        double f;
        double p = 53;
        
        f = pow(2.0,ceil(p/2.0)) + 1;
        double* a_ptr = a.data();
        double* b_ptr = b.data();

        #pragma omp task depend (in:tp1,tp2,a_ptr[start:end],b_ptr[start:end],c,ah,al,bh,bl) depend (out:tp1,tp2)  // Two Prod
        {
            int k = 0;
            for (unsigned int i = start;i<=end;i++) {
                // Result
                tp1[k] = a[i] * b[i];
                // Split a
                c[k] = f*a[i];
                ah[k] = c[k] - (c[k] - a[i]);
                al[k] = a[i] - ah[k];

                // Split b
                c[k] = f*b[i];
                bh[k] = c[k] - (c[k] - b[i]);
                bl[k] = b[i] - bh[k];

                // Error
                tp2[k] = al[k] * bl[k] - ((( tp1[k] - ah[k] * bh[k] ) - al[k] * bh[k] ) - ah[k] * bl[k]);
                k = k+1;

                // Print
                // printf("\nFIRST TASK : tp1[%d] with i global = %d for thread number %d :  %.20f \n",k,i,LT,tp1[k]);
                // printf("tp2[%d] with i global = %d for thread number %d :  %.20f \n\n",k,i,LT,tp2[k]);
            }

        } // End Two Prod

        #pragma omp taskwait

        #pragma omp task depend (in:tp1,tp2) depend(out:Cl,Ch)  // Exponent accumalation
        {
            for (unsigned int i = 0;i<size_local;i++) {
                // Result
                frexp(tp1[i],&exp);             // exp = E - bias
                E = exp + 1024;
                TwoSum(Ch[E], tp1[i],tmpdb,error);
                Ch[E] = tmpdb;
                Cl[E] += error;
            
                // Error 
                frexp(tp2[i],&exp);             // exp = E - bias
                E = exp + 1024;
                TwoSum(Ch[E], tp2[i],tmpdb,error);
                Ch[E] = tmpdb;
                Cl[E] += error;
            }
            
            // Print
            // for (unsigned int w = 0 ; w<2048;w++){
            //     if (Cl[w] != 0) {
            //         printf("Cl[%d] for thread number %d :  %.20f \n",w,LT,Cl[w]);
            //     }
            // }
            // for (unsigned int w = 0 ; w<2048;w++){
            //     if (Ch[w] != 0) {
            //         printf("Ch[%d] for thread number %d :  %.20f \n",w,LT,Ch[w]);
            //     }
            // }

        } // End exponent accumulation

        #pragma omp task depend (in:Ch,Cl,Err,Res) depend(out:Res,Err)  // Distillation
        {
        
            // Res
            int K = 5;
            double* tmp1 = Ch;	
            for(unsigned int k = 1 ; k <= K-1 ; k++){
                for(unsigned int i = 1; i <2048 ; i++){
                    double tmp_res = 0, tmp_err = 0;
                    TwoSum<double> (tmp1[i], tmp1[i-1], tmp_res, tmp_err);
                    tmp1[i] = tmp_res; 
                    tmp1[i-1] = tmp_err;
                }
            }
            for(unsigned int i = 0; i < 2048 ; i++){
                Res += tmp1[i];
            }
    
            // Err
            double* tmp2 = Cl;
            for(unsigned int k = 1 ; k <= K-1 ; k++){
                for(unsigned int i = 1; i <2048 ; i++){
                    double tmp_res = 0, tmp_err = 0;
                    TwoSum<double> (tmp2[i], tmp2[i-1], tmp_res, tmp_err);
                    tmp2[i] = tmp_res; 
                    tmp2[i-1] = tmp_err;
                }
            }
            for(unsigned int i = 0; i < 2048 ; i++){
                Err += tmp2[i];
            }

            // Gather
            Result_global[LT] = Res;
            Error_global[LT] = Err;

            // Print
            // printf("\nResult for thread number %d :  %.20f \n",omp_get_thread_num(),Res);
            // printf("Error for thread number %d :  %.20f \n",omp_get_thread_num(),Err);
            

        } // End distillation

        
    } // End parrallel 

    // Final Distillation

    double final_result = SumK(Result_global,NBT,5);
    double final_error = SumK(Error_global,NBT,5);

    printf("final result : %.20f \n",final_result);

    printf("final error : %.20f \n",final_error);

    double testpar;
    testpar = Par_rare_blas_dot_prod(a,b,n,nb_threads);
    printf("test par: %.20f \n",testpar);
    
}


