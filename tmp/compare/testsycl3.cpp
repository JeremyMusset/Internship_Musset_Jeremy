#include <CL/sycl.hpp>
#include <iostream>
#include <numeric>

using namespace cl::sycl;

int main() {
  constexpr int n = 1024;
  queue q;

  std::vector<double> u(n, 1.0);
  std::vector<double> v(n, 2.0);
  std::vector<double> result(1);

  {
    buffer<double, 1> u_buf(u.data(), range<1>{static_cast<size_t>(n)});
    buffer<double, 1> v_buf(v.data(), range<1>{static_cast<size_t>(n)});
    buffer<double, 1> result_buf(result.data(), range<1>{1});

    q.submit([&](handler& h) {
      auto u_accessor = u_buf.get_access<access::mode::read>(h);
      auto v_accessor = v_buf.get_access<access::mode::read>(h);
      auto result_accessor = result_buf.get_access<access::mode::write>(h);

      h.parallel_for(range<1>{n}, [=](id<1> i) {
        v_accessor[i] = u_accessor[i] + v_accessor[i];
      });

      h.single_task([&]() {
        result_accessor[0] = std::inner_product(u_accessor, u_accessor + n, v_accessor, 0.0f);
      });
    });
  }

  std::cout << "Result: " << result[0] << std::endl;

  return 0;
}
