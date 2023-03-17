#include <cmath>
#include <mkl.h>
#include "/home/jerem/app/blaspp/include/blas/dot.hh"
#include "../../../include/dot_product.h"
#include <benchmark/benchmark.h>

// La fonction à mesurer
int Fibonacci(int n) {
  if (n < 2) {
    return n;
  } else {
    return Fibonacci(n-1) + Fibonacci(n-2);
  }
}

// Définir un benchmark
static void BM_Fibonacci(benchmark::State& state) {
  // Boucle à travers un nombre de répétitions spécifié
  for (auto _ : state) {
    Fibonacci(10);
  }
}

// Enregistrer le benchmark
BENCHMARK(BM_Fibonacci);

// Fonction main pour exécuter le benchmark
int main(int argc, char** argv) {
  // Initialiser Google Benchmark
  ::benchmark::Initialize(&argc, argv);

  // Exécuter le benchmark
  ::benchmark::RunSpecifiedBenchmarks();

  return 0;
}