#include <iostream>
#include <CL/sycl.hpp>
#include <vector>

using namespace std;
using namespace sycl;


int main() {
   
    
     int n = 351;

    vector<double> u(n), v(n);
    for (int i = 0; i < n; i++) {
        u[i] = 0.3;
    }

    for (int i = 0; i < n; i++) {
        v[i] = 0.2;
    }

   double vres;
    vres = 0.0;
    for (unsigned int j=0; j<n;j++){
        vres += u[j]*v[j];
    }
    printf("Vrai res = %.20f\n",vres);


    // Crée un contexte SYCL
    default_selector deviceSelector;
    queue q(deviceSelector);

    // Crée des buffers SYCL pour stocker les vecteurs
    buffer<double> u_buf(u), v_buf(v);

    // Effectue le calcul du produit scalaire sur le device
    buffer<double> result_buf(range<1>{1});
    q.submit([&](handler &h) {
        accessor u(u_buf, h, read_only);
        accessor v(v_buf, h, read_only);
        accessor result(result_buf, h, write_only);

        h.parallel_for(range<1>{static_cast<size_t>(n)}, [=](id<1> i) {
            result[0] += u[i] * v[i];
        });
    });

    // Copie le résultat du device vers le host
    double produitScalaire = result_buf.get_host_access()[0];
   device d = q.get_device();
   std::cout << "Selected device : " << d.get_info<info::device::name>() << std::endl;

    cout << "Le produit scalaire des deux vecteurs est : " << produitScalaire << std::endl;

    return 0;
}