#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include "matplotlibcpp.h"
#include <unistd.h>

#include <sys/sysinfo.h>


using namespace std;
namespace plt = matplotlibcpp;

#define P 4000

int main() {
    // Time / Size
    int sz_time = 20;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_standard(sz_time);
    class std::vector<double> Time_par_standard(sz_time);

    VSize = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
    int i = 0;
    int N;
    double Time_seq, Time_par,res;
    vector<double>::iterator k;
    for (k = VSize.begin(); k != VSize.end(); k++){  
        printf(" ___________ SIZE = %.20f ________________\n\n",N);
        Time_seq =0;
        Time_par = 0;
        const N = *k;

        /////////////////////////// RES //////////////////////////////
        res =0;
        for (unsigned int j=0; j<N;j++){
        res += a[j]*b[j];
        }

        /////////////////////////// SEQ //////////////////////////////

        float a[N], b[N];          // Vecteurs d'entrée
        float c = 0;               // Produit scalaire

        // Initialisation des vecteurs
        for (size_t i = 0; i < N; ++i) {
            a[i] = i;
            b[i] = 2 * i;
        }

        // Création du contexte SYCL
        sycl::queue q{sycl::default_selector{}};

        // Allocation des buffers de données sur le device
        sycl::buffer<float, 1> a_buf{a, sycl::range<1>{N}};
        sycl::buffer<float, 1> b_buf{b, sycl::range<1>{N}};
        sycl::buffer<float, 1> c_buf{&c, sycl::range<1>{1}};

        // Exécution du kernel sur le device
        clock_gettime(CLOCK_REALTIME,&Min_start_standard); 
        q.submit([&](sycl::handler& h) {
            auto a_acc = a_buf.get_access<sycl::access::mode::read>(h);
            auto b_acc = b_buf.get_access<sycl::access::mode::read>(h);
            auto c_acc = c_buf.get_access<sycl::access::mode::write>(h);

            // Kernel qui calcule le produit scalaire
            h.parallel_for<class dot_product>(sycl::range<1>{N}, [=](sycl::id<1> i) {
            c_acc[0] += a_acc[i] * b_acc[i];
            });
        });

        // Récupération du résultat
        q.wait();
  



        /////////////////////////// PAR //////////////////////////////

        // Save result
        Time_standard[i] = Time_seq;
        Time_par_standard[i] = Time_par;



        printf("\nTime sequential standard dot prod : %.30f\n",Time_seq);
        printf("Time parallel standard dot prod : %.30f\n",Time_par);
        

        i += 1;
    
    std::cout << "Produit scalaire : " << c << std::endl;
    coeff /= sz_time;
    printf("\n Coeff : %.20f\n",coeff);
    int a;
    printf("\nTime_standard = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_standard[a]);
            }
            else{
                printf("%.10f, ",Time_standard[a]);
            }
        }
        printf("};\n\n");

        printf("\nTime_par_standard = \n {");
        for (a=0; a<sz_time;a++){
            if(a == sz_time-1){
                printf("%.10f",Time_par_standard[a]);
            }
            else{
                printf("%.10f, ",Time_par_standard[a]);
            }
        }
        printf("};\n");


 
    return 0;
}