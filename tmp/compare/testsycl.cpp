#include <iostream>
#include <CL/sycl.hpp>
#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include <random> 
#include <unistd.h>
#include <sys/sysinfo.h>

using namespace cl::sycl;
using namespace std;

class vector_addition;
class dot_product_kernel;

int main(int, char**) {
   int sz_time = 18;
//    int sz_time =1;
    std::vector<double> VSize(sz_time);
    std::vector<double> Time_seq(sz_time);
    std::vector<double> Time_par(sz_time);

    // VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000}; //1500000,2000000};
    VSize = {400};
    int o = 0;
    int N;
    double res;
    double Min_time_seq, Min_time_par;
    std::vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf(" ___________ SIZE = %.20f ________________\n\n",*k);
        N = *k;
     
        

        /////////////////////////// DATA //////////////////////////////

        double* a = new double[N];
        double* b = new double[N];          // Vecteurs d'entrée
        double c = 0.0;

        // Initialisation des vecteurs
        
        // for (size_t i = 0; i < N; ++i) {
        //     std::random_device rd;
        //     std::mt19937 gen(rd());
        //     std::uniform_real_distribution<double> dist(0.0, 4.0);
        //     a[i] = dist(gen) - 2;
        // }
        // for (size_t i = 0; i < N; ++i) {
        //     std::random_device rd;
        //     std::mt19937 gen(rd());
        //     std::uniform_real_distribution<double> dist(0.0, 4.0);
        //     b[i] = dist(gen) - 2;
        // }


    
        printf("a = \n");
        for (size_t i = 0; i < N; ++i) {
            a[i] = i;
            if (i%(N/10) == 0){
               printf("a[%d] = %.20f\n",i, a[i]);
            }
        }

        printf("b = \n");
        for (size_t i = 0; i < N; ++i) {
            b[i] = i;
            if (i%(N/10) == 0){
            printf("b[%d] = %.20f\n",i, b[i]);
            }
        }

        /////////////////////////// RES //////////////////////////////
        res = 0;
        for (unsigned int j=0; j<N;j++){
            res += a[j]*b[j];
        }
        printf("\nRES = %.20f",res);


        ////////////////////////// SYCL ////////////////////////////
        struct timespec Min_start_seq, Min_end_seq;
         double time_tmp;
        // Création du contexte SYCL
        sycl::queue q{sycl::default_selector{}};

        // Allocation des buffers de données sur le device
        sycl::buffer<double, 1> a_buf{a, sycl::range<1>{static_cast<size_t>(N)}};
        sycl::buffer<double, 1> b_buf{b, sycl::range<1>{static_cast<size_t>(N)}};
        sycl::buffer<double, 1> c_buf{&c, sycl::range<1>{1}};
        // Exécution du kernel sur le device
        clock_gettime(CLOCK_REALTIME,&Min_start_seq); 
        q.submit([&](sycl::handler& h) {
            auto a_acc = a_buf.get_access<sycl::access::mode::read>(h);
            auto b_acc = b_buf.get_access<sycl::access::mode::read>(h);
            auto c_acc = c_buf.get_access<sycl::access::mode::write>(h);

            // Kernel qui calcule le produit scalaire
            
            h.parallel_for<class dot_product_kernel>(sycl::range<1>{static_cast<size_t>(N)}, [=](sycl::id<1> id) {
                c_acc[0] += a_acc[id] * b_acc[id];
            });
            std::cout << "\nProduit scalaire : " << c_buf.get_host_access()[0] << std::endl;
            
        }).wait();
        std::cout << "\nProduit scalaire : " << c_buf.get_host_access()[0] << std::endl;
        printf("\n");
        clock_gettime(CLOCK_REALTIME,&Min_end_seq); 
        time_tmp = ((Min_end_seq.tv_sec - Min_start_seq.tv_sec) * 1000000000 + (Min_end_seq.tv_nsec - Min_start_seq.tv_nsec) );
        Time_seq[o] = time_tmp;

        // Récupération du résultat
        
        std::cout << "Produit scalaire : " << c << std::endl;
       
        printf("\nTime sequential standard dot prod : %.30f\n",Time_seq[o]);
        printf("Time parallel standard dot prod : %.30f\n",Time_par[o]);
       
        o += 1;
    }
   return 0;
}