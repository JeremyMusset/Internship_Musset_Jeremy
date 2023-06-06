#include <CL/sycl.hpp>
#include <iostream>
#include <vector>
#include <cmath>


using namespace cl::sycl;

// Sous-classe de device_selector qui sélectionne le premier GPU disponible
class my_selector : public device_selector {
 public:
  int operator()(const device& dev) const override {
    if (dev.is_cpu()) {
      return 1;
    } else {
      return -1;
    }
  }
};

int main() {
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

  // Définition des vecteurs et du résultat
  const int n = 120000000;
  std::vector<double> a(n);
  std::vector<double> b(n);
  std::vector<double> result(n);
  std::vector<double> res(nb_units);
  res[0] = 0.0;
  double vres = 0.0;
  for (int i = 0; i < n; i++) {
    a[i] = 0.2;
    b[i] = 0.3;
    vres += a[i] * b[i];
  }
  printf("Vrai res : %.20f \n",vres);

  // Création des buffers de données pour les vecteurs
  buffer<double, 1> buffer_a(a.data(), range<1>(n));
  buffer<double, 1> buffer_b(b.data(), range<1>(n));
  buffer<double, 1> buffer_result(result.data(), range<1>(n));
  buffer<double, 1> buffer_res(res.data(), range<1>(nb_units));

  // Calcul du produit scalaire en utilisant une boucle for
  my_queue.submit([&](handler& h) {
    auto accessor_a = buffer_a.get_access<access::mode::read>(h);
    auto accessor_b = buffer_b.get_access<access::mode::read>(h);
    auto accessor_result = buffer_result.get_access<access::mode::write>(h);
   
    h.parallel_for(range{n}, [=](id<1> i) {
      accessor_result[i] = accessor_a[i] * accessor_b[i];
    });
  });

  // Attente de la fin de l'exécution de la queue
  my_queue.wait();

  // Affichage des résultats
  // printf(" \n tab : \n");
  // for (int i = 0; i < n; i++) {
  //   std::cout << result[i] << " ";
  // }

  my_queue.submit([&](auto &h) {
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
      });
    });
my_queue.wait();

  // Affichage des résultats
  // printf(" \n accum : \n");
  // for (int i = 0; i < nb_units; i++) {
  //   std::cout << res[i] << " ";
  // }
  double res_final = 0.0;
  for (int i = 0; i < nb_units; i++) {
    res_final += res[i];
  }

  printf(" \n final res : %.20f \n", res_final);



  std::cout << std::endl;

  return 0;
}
