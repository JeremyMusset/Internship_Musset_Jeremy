#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <iostream>
#include <float.h>
#include <cmath>
#include <omp.h>
#include <iomanip>
#include <ios>

#define BLOCK_DIM 16
#define NB_EXEC 20

__global__ void seq_dot_prod(double *in1, double *in2, double *out, int size) {
  int index = threadIdx.x + blockIdx.x * blockDim.x;
  // Stocker le résultat final dans la mémoire globale
  if (index == 0) {
    out[0] = 0;
    for (unsigned int j=0; j<size;j++){
      out[0]+= in1[j]*in2[j];
    }
  }
}

__global__ void par_dot_prod_2(double *in1, double *in2, double *out, int size) {
    int index = threadIdx.x + blockIdx.x * blockDim.x;
    int gridSize = blockDim.x * gridDim.x;
    const int size_local = size;

    double sum_local = 0.0;
    __shared__ double reduction_bloc [1000];

    // Each threads compute local multiplication 
    for (int i = index; i < size; i += gridSize) {
      sum_local += in1[i] * in2[i];
    }

    // Each threads sum his local multiplication to give a local dot product to the thread 0 of his block
    reduction_bloc[threadIdx.x] = sum_local;
    __syncthreads();

    // each block compute the reduction of local results inside his block       
    for (int s = blockDim.x / 2; s > 0; s >>= 1) {
      if (threadIdx.x < s) {
        reduction_bloc[threadIdx.x] += reduction_bloc[threadIdx.x + s];
      }
      __syncthreads();
    }
    
    // Each threads 0 save the reduction of his block in out
    if (threadIdx.x == 0) {
      out[blockIdx.x] = reduction_bloc[0];
    }
    __syncthreads();

    // Thread master sum every blocs reductions
    if (blockIdx.x == 0) {
        double final_sum = 0.0;
        for (int i = 0; i < gridDim.x; i++) {
            final_sum += out[i];
        }
        out[0] = final_sum;
    }
}

__global__ void par_dot_prod(double *in1, double *in2, double *out, int size) {
  //@@ Insert code to implement vector addition here
    int index = threadIdx.x;

    // Create shared table
    __shared__ double partials[BLOCK_DIM];
    double partial = 0.0;

    // Each threads compute a part of dot product 
    for (int i = index; i < size; i += blockDim.x) {
        partial += in1[i] * in2[i];
    }
    partials[index] = partial;
    __syncthreads();

    // Reduction
    for (int stride = blockDim.x / 2; stride > 0; stride >>= 1) {
        if (index < stride) {
            partials[index] += partials[index + stride];
        }
    __syncthreads();
    }

    // Share result
    if (index == 0) {
        out[0] = partials[0];
    }
}



int main() {
  double *hostInput1;
  double *hostInput2;
  double *hostOutput;
  double *hostOutput2;
  double *deviceInput1;
  double *deviceInput2;
  double *deviceOutput;
  double *deviceOutput2;
  int size;
  int sz_time = 20;
  // double *VSize;
  double coeff = 0;
  double  *Time_cuda_par;
  double  *Time_cuda_seq;
  double  Min_Time_cuda_par;
  double  Min_Time_cuda_seq;
  Time_cuda_par =
      (double *)malloc(20 * sizeof(double));
  Time_cuda_seq =
      (double *)malloc(20 * sizeof(double));
  double *Vec;
  double time_tmp;
  int size_vec;
  int VSize[] = {5000,10000,15000,20000,25000,30000,40000,50000,75000, 100000,200000,300000,400000,500000,625000,750000,875000,1000000,1500000,2000000};
  for(unsigned int k=0; k<sz_time;k++)
  {
  Time_cuda_par[k] = 0;
  Time_cuda_seq[k] = 0;
  size = VSize[k];
  size_vec = 2*size+1;
  for (unsigned int l =0; l<10; l++){
  printf("\n--------------  size : %d --------------- data : %d ---------------- \n\n",size,l);
  // Malloc
  hostInput1 =
      (double *)malloc(size * sizeof(double));
  hostInput2 =
      (double *)malloc(size * sizeof(double));
  hostOutput =
      (double *)malloc( sizeof(double));
  hostOutput2 =
      (double *)malloc( sizeof(double));
  Vec =
      (double *)malloc(size_vec * sizeof(double));


  //@@Import host data
  FILE *fichier;
  char name[500];
  sprintf(name,"../data/vector%d.bin",l);
  fichier = fopen(name, "rb");
  // fichier = fopen("../data/vector0.bin", "rb");
  if (fichier == NULL) {
      printf("Impossible d'ouvrir le fichier.\n");
      exit(EXIT_FAILURE);
  }
  fread(Vec, 8, size_vec, fichier);
  fclose(fichier);
  for (unsigned int i=0;i<size;i++){
        hostInput1[i] = Vec[i+1];
        hostInput2[i] = Vec[size+1+i]; 
    }

  //@@Compute solution 
  struct timespec start_cuda_par, end_cuda_par,start_cuda_seq,end_cuda_seq;
  double result = 0.0;
  for (unsigned int j=0; j<size;j++){
      result += hostInput1[j]*hostInput2[j];
  }
  printf("GOOD RESULT : %.20f \n",result);


  //@@ Allocate GPU memory here
  cudaMalloc((void **)&deviceInput1, size * sizeof(double));
  cudaMalloc((void **)&deviceInput2, size * sizeof(double));
  cudaMalloc((void **)&deviceOutput,sizeof(double));
cudaMalloc((void **)&deviceOutput2, sizeof(double));

  //@@ Copy memory to the GPU here
  cudaMemcpy(deviceInput1, hostInput1, size * sizeof(double),
             cudaMemcpyHostToDevice);
  cudaMemcpy(deviceInput2, hostInput2, size * sizeof(double),
             cudaMemcpyHostToDevice);


  //@@ Initialize the grid and block dimensions here
  dim3 blockDim(BLOCK_DIM);
  dim3 gridDim(ceil((double)1920 / BLOCK_DIM));

  dim3 blockDim2(1);
  dim3 gridDim2(1);
  

  //@@ Launch the GPU Kernel here
  //Parallel
  // gpuTKTime_stop(Compute, "PARALLEL TIME : ");
  par_dot_prod_2<<<gridDim, blockDim>>>(deviceInput1, deviceInput2, deviceOutput,
                                  size);
  // gpuTKTime_stop(Compute, "PARALLEL TIME : ");
  for (unsigned int w =0;w<NB_EXEC;w++){ 
    clock_gettime(CLOCK_REALTIME,&start_cuda_par); 
    par_dot_prod_2<<<gridDim, blockDim>>>(deviceInput1, deviceInput2, deviceOutput,
                                        size);
    cudaDeviceSynchronize();
    clock_gettime(CLOCK_REALTIME,&end_cuda_par); 
    time_tmp = ((end_cuda_par.tv_sec - start_cuda_par.tv_sec) * 1000000000 + (end_cuda_par.tv_nsec - start_cuda_par.tv_nsec) );
    if (w==0){
      Min_Time_cuda_par = time_tmp;
    }
      if (time_tmp < Min_Time_cuda_par){
      Min_Time_cuda_par = time_tmp;
    }
  }
  Time_cuda_par[k] += Min_Time_cuda_par;

  cudaDeviceSynchronize();

  // Sequential 
  seq_dot_prod<<<gridDim2, blockDim2>>>(deviceInput1, deviceInput2, deviceOutput2,
                                      size);

  for (unsigned int w =0;w<NB_EXEC;w++){ 
    clock_gettime(CLOCK_REALTIME,&start_cuda_seq); 
    seq_dot_prod<<<gridDim2, blockDim2>>>(deviceInput1, deviceInput2, deviceOutput2,
                                        size);
    cudaDeviceSynchronize();
    clock_gettime(CLOCK_REALTIME,&end_cuda_seq); 
    time_tmp = ((end_cuda_seq.tv_sec - start_cuda_seq.tv_sec) * 1000000000 + (end_cuda_seq.tv_nsec - start_cuda_seq.tv_nsec) );
    if (w==0){
      Min_Time_cuda_seq = time_tmp;
    }
      if (time_tmp < Min_Time_cuda_seq){
      Min_Time_cuda_seq = time_tmp;
    }
  }  
  Time_cuda_seq[k] += Min_Time_cuda_seq;
  cudaDeviceSynchronize();


  //@@ Copy the GPU memory back to the CPU here
  cudaMemcpy(hostOutput, deviceOutput, sizeof(double),
             cudaMemcpyDeviceToHost);
  cudaMemcpy(hostOutput2, deviceOutput2, sizeof(double),
             cudaMemcpyDeviceToHost);

  printf("Cuda par result : %.20f in %.20f\n",hostOutput[0],Min_Time_cuda_par);
  printf("Cuda seq result : %.20f in %.20f\n",hostOutput2[0],Min_Time_cuda_seq);
  //@@ Free the GPU memory here
  cudaFree(deviceInput1);
  cudaFree(deviceInput2);


  //@@ Free the CPU memory here
  free(hostInput1);
  free(hostInput2);
  }
  Time_cuda_par[k] /= 10;
  Time_cuda_seq[k] /= 10;
  coeff += Time_cuda_seq[k] / Time_cuda_par[k];
  }
  coeff /= sz_time;

  // Prints
  printf("\n\n Average coefficient = %.20f",coeff);
  printf("\n\n Time_cuda_par = {");
  for (unsigned int o = 0;o<19;o++){
    printf(" %.15f, ",Time_cuda_par[o]);
  }
  printf(" %.15f }; \n",Time_cuda_par[19]);

  printf("\n\n Time_cuda_seq = {");
  for (unsigned int o = 0;o<19;o++){
    printf(" %.15f, ",Time_cuda_seq[o]);
  }
  printf(" %.15f }; \n",Time_cuda_seq[19]);
  return 0;
}