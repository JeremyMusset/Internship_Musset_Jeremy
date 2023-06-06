#include "../../include/error_free.h"
#include "../../include/dot_product.h"
#include "../../include/gen_random_number.h"
#include "../../include/compare.h"
#include <unistd.h>
#include <sys/sysinfo.h>
#include <CL/sycl.hpp>
#include <iostream>
#include <vector>
#include <cmath>

// changer dans my_selector is cpu pas is gpu si sur GPU !

using namespace std;
using namespace cl::sycl;

#define P 4000
#define NB_EXEC 20

class my_selector : public device_selector
{
public:
    int operator()(const device &dev) const override
    {
        if (dev.is_cpu())
        {
            return 1;
        }
        else
        {
            return -1;
        }
    }
};

int main()
{
    // Time / Size
    int sz_time = 20;
    int nb_gen = 10;
    class std::vector<double> VSize(sz_time);
    class std::vector<double> Time_sycl_par(sz_time);
    class std::vector<double> Time_sycl_seq(sz_time);

    VSize = {5000, 10000, 15000, 20000, 25000, 30000, 40000, 50000, 75000, 100000, 200000, 300000, 400000, 500000, 625000, 750000, 875000, 1000000, 1500000, 2000000};
    int i = 0;
    vector<double>::iterator k;

    for (k = VSize.begin(); k != VSize.end(); k++)
    {
        printf("  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SIZE = %.20f ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n", *k);
        // We execute dot product on the nb_gen files
        if (*k<11000) {
        for (unsigned int l = 0; l < nb_gen; l++)
        {
            double Time_par;
            double Time_seq;
            const double n = *k;
            struct timespec start_par, end_par, start_seq, end_seq;
            double time_tmp;
            double Min_Time_par;
            double Min_Time_seq;
            printf(" ___________ SIZE = %.20f _______________ DATA = %d _________________\n\n", n, l);

            ///////////////////////////////////////////////////////////////////
            ////////////////////////////// DATA ///////////////////////////////
            ///////////////////////////////////////////////////////////////////
            class std::vector<double> vec;
            class std::vector<double> a(n);
            class std::vector<double> b(n);
            char name[10000];
            sprintf(name, "../data/vector%d.bin", l);
            std::ifstream input_file(name, std::ios::binary);
            if (!input_file)
            {
                std::cerr << "Could not open binary_file.bin" << std::endl;
            }
            double number;
            while (input_file.read(reinterpret_cast<char *>(&number), sizeof(number)))
            {
                vec.push_back(number);
            }
            input_file.close();
            // Vectors importation
            for (unsigned int i = 0; i < n; i++)
            {
                a[i] = vec[i + 1];
                b[i] = vec[n + 1 + i];
            }
             


            ///////////////////////////////////////////////////////////////////
            ////////////////////////////// SEQ ////////////////////////////////
            ///////////////////////////////////////////////////////////////////

            ///////////////////////////////////////////////////////////////////
            ////////////////////////////// PAR ////////////////////////////////
            ///////////////////////////////////////////////////////////////////

            // Création de la sous-classe de device_selector
            my_selector selector;

            // Sélection du device en fonction du sélecteur
            device dev = selector.select_device();

            // Recuperation du nombre d'unité de calcul
            auto nb_units = dev.get_info<info::device::max_compute_units>();
            std::cout << "Nombre maximum d'unités de calcul : " << nb_units << std::endl;

            // Création du contexte et de la queue
            auto my_context = context(dev);
            auto my_queue = queue(my_context, dev);
            std::vector<double> result(n);
            std::vector<double> res(nb_units);
            res[0] = 0.0;
            double vres = 0.0;
            for (int i = 0; i < n; i++)
            {
                vres += a[i] * b[i];
            }
            printf("Vrai res : %.20f \n", vres);

            // Création des buffers de données pour les vecteurs
            buffer<double, 1> buffer_a(a.data(), range<1>(n));
            buffer<double, 1> buffer_b(b.data(), range<1>(n));
            buffer<double, 1> buffer_result(result.data(), range<1>(n));
            buffer<double, 1> buffer_res(res.data(), range<1>(nb_units));

            // Cache warmup
            // Calcul du produit scalaire en utilisant une boucle for
            my_queue.submit([&](handler &h)
                            {
            auto accessor_a = buffer_a.get_access<access::mode::read>(h);
            auto accessor_b = buffer_b.get_access<access::mode::read>(h);
            auto accessor_result = buffer_result.get_access<access::mode::write>(h);
            h.parallel_for(range(n), [=](id<1> i) {
            accessor_result[i] = accessor_a[i] * accessor_b[i];
            }); });

            // Attente de la fin de l'exécution de la queue
            my_queue.wait();

            my_queue.submit([&](auto &h)
                            {
            auto accessor_result = buffer_result.get_access<access::mode::read>(h);
            auto accessor_res = buffer_res.get_access<access::mode::write>(h);
            int BATCH = ceil((double)n / nb_units);
            h.parallel_for(nb_units, [=](auto index) {
                size_t glob_id = index[0];
                size_t start = glob_id * BATCH;
                size_t end = (glob_id + 1) * BATCH;
                if (end > n){
                    end = n;
                }
                double sum = 0.0;
                for (size_t i = start; i < end; ++i){
                    sum += *(accessor_result.get_pointer() + i);
                }
                *(accessor_res.get_pointer() + glob_id) = sum;
            }); });
            my_queue.wait();

            double res_final = 0.0;
            for (int i = 0; i < nb_units; i++)
            {
                res_final += res[i];
            }
            printf(" \n final res : %.20f \n", res_final);

            // Calcul
            for (unsigned int t = 0; t < NB_EXEC; t++)
            {
                clock_gettime(CLOCK_REALTIME, &start_par);
                my_queue.submit([&](handler &h)
                                {
                auto accessor_a = buffer_a.get_access<access::mode::read>(h);
                auto accessor_b = buffer_b.get_access<access::mode::read>(h);
                auto accessor_result = buffer_result.get_access<access::mode::write>(h);
                h.parallel_for(range(n), [=](id<1> i) {
                accessor_result[i] = accessor_a[i] * accessor_b[i];
                }); });

                // Attente de la fin de l'exécution de la queue
                my_queue.wait();

                my_queue.submit([&](auto &h)
                                {
                auto accessor_result = buffer_result.get_access<access::mode::read>(h);
                auto accessor_res = buffer_res.get_access<access::mode::write>(h);
                int BATCH = ceil((double)n / nb_units);
                h.parallel_for(nb_units, [=](auto index) {
                    size_t glob_id = index[0];
                    size_t start = glob_id * BATCH;
                    size_t end = (glob_id + 1) * BATCH;
                    if (end > n){
                        end = n;
                    }
                    double sum = 0.0;
                    for (size_t i = start; i < end; ++i){
                        sum += *(accessor_result.get_pointer() + i);
                    }
                    *(accessor_res.get_pointer() + glob_id) = sum;
                }); });
                my_queue.wait();

                double res_final = 0.0;
                for (int i = 0; i < nb_units; i++)
                {
                    res_final += res[i];
                }
                clock_gettime(CLOCK_REALTIME, &end_par);
                time_tmp = ((end_par.tv_sec - start_par.tv_sec) * 1000000000 + (end_par.tv_nsec - start_par.tv_nsec));
                if (t == 0)
                {
                    Min_Time_par = time_tmp;
                }
                if (time_tmp < Min_Time_par)
                {
                    Min_Time_par = time_tmp;
                }
            }
            // Save result
            Time_sycl_par[i] += Min_Time_par;
            Time_sycl_seq[i] += Min_Time_seq;

        } // End loop l
        i += 1;
        }
    } // End loop size

    for (unsigned int j = 0; j < sz_time; j++)
    {
        Time_sycl_par[j] /= nb_gen;
        Time_sycl_seq[j] /= nb_gen;
    }
    printf("\nTime_sycl_par = \n {");
    int a;
    for (a = 0; a < sz_time; a++)
    {
        if (a == sz_time - 1)
        {
            printf("%.10f", Time_sycl_par[a]);
        }
        else
        {
            printf("%.10f, ", Time_sycl_par[a]);
        }
    }
    printf("};\n\n");

    printf("\nTime_sycl_seq = \n {");
    for (a = 0; a < sz_time; a++)
    {
        if (a == sz_time - 1)
        {
            printf("%.10f", Time_sycl_seq[a]);
        }
        else
        {
            printf("%.10f, ", Time_sycl_seq[a]);
        }
    }
    printf("};\n");

    // Log
    class std::vector<double> T1(2);
    class std::vector<double> T2(2);
    T1[0] = VSize[0];
    T1[1] = VSize[sz_time - 1];
    T2[0] = Time_sycl_par[0];
    T2[1] = Time_sycl_par[sz_time - 1];
    // plt::loglog(T1,T2,"white");

    // plt::plot(VSize,Time_sycl_par,{{"color", "g"},{"label", "Standard dot product"}});
    // plt::plot(VSize,Time_sycl_seq,{{"color", "r"},{"label", "Parallel standard dot product"}});

    // Caches
    std::vector<double> cachesL1 = {18000, 18000};
    std::vector<double> cachesL2 = {468750, 468750};
    std::vector<double> cachesL3 = {750000, 750000};
    double height = 10000000;
    std::vector<double> heights = {0, height};

    // Tracé des lignes verticales
    // plt::plot(cachesL1,heights,{{"linestyle","--"},{"label", "L1d Cache"}});
    // plt::plot(cachesL2,heights,{{"linestyle","--"},{"label", "L2 Cache"}});
    // plt::plot(cachesL3,heights,{{"linestyle","--"},{"label", "L3 Cache"}});

    // plt::title("Time of execution according to size");
    // plt::xlabel("Size of vector");
    // plt::ylabel("Time (in ns)");

    // plt::legend();
    // plt::show();

    return 0;
}