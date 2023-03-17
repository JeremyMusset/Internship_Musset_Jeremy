#include <gputk.h>

__global__ void vecAdd(double *in1, double *in2, double out, int len) {
  //@@ Insert code to implement vector addition here
  int index = threadIdx.x + blockIdx.x * blockDim.x;
  if (index < len) {
    out += in1[index] + in2[index];
  }
}

int main(int argc, char **argv) {
  gpuTKArg_t args;
  int inputLength;
  double *hostInput1;
  double *hostInput2;
  double hostOutput;
  double *deviceInput1;
  double *deviceInput2;
  double deviceOutput;

  args = gpuTKArg_read(argc, argv);

  gpuTKTime_start(Generic, "Importing data and creating memory on host");
  hostInput1 =
      (double *)gpuTKImport(gpuTKArg_getInputFile(args, 0), &inputLength);
  hostInput2 =
      (double *)gpuTKImport(gpuTKArg_getInputFile(args, 1), &inputLength);
  gpuTKTime_stop(Generic, "Importing data and creating memory on host");

  gpuTKLog(TRACE, "The input length is ", inputLength);

  gpuTKTime_start(GPU, "Allocating GPU memory.");
  //@@ Allocate GPU memory here
  cudaMalloc((void **)&deviceInput1, inputLength * sizeof(double));
  cudaMalloc((void **)&deviceInput2, inputLength * sizeof(double));
  gpuTKTime_stop(GPU, "Allocating GPU memory.");

  gpuTKTime_start(GPU, "Copying input memory to the GPU.");
  //@@ Copy memory to the GPU here
  cudaMemcpy(deviceInput1, hostInput1, inputLength * sizeof(double),
             cudaMemcpyHostToDevice);
  cudaMemcpy(deviceInput2, hostInput2, inputLength * sizeof(double),
             cudaMemcpyHostToDevice);
  gpuTKTime_stop(GPU, "Copying input memory to the GPU.");

  //@@ Initialize the grid and block dimensions here
  dim3 blockDim(32);
  dim3 gridDim(ceil(((double)inputLength) / ((double)blockDim.x)));

  gpuTKLog(TRACE, "Block dimension is ", blockDim.x);
  gpuTKLog(TRACE, "Grid dimension is ", gridDim.x);

  gpuTKTime_start(Compute, "Performing CUDA computation");
  //@@ Launch the GPU Kernel here
  vecAdd<<<gridDim, blockDim>>>(deviceInput1, deviceInput2, deviceOutput,
                                inputLength);
  cudaDeviceSynchronize();
  gpuTKTime_stop(Compute, "Performing CUDA computation");

  gpuTKTime_start(Copy, "Copying output memory to the CPU");
  //@@ Copy the GPU memory back to the CPU here
  cudaMemcpy(hostOutput, deviceOutput, sizeof(double),
             cudaMemcpyDeviceToHost);
  gpuTKTime_stop(Copy, "Copying output memory to the CPU");

  gpuTKTime_start(GPU, "Freeing GPU Memory");
  //@@ Free the GPU memory here
  cudaFree(deviceInput1);
  cudaFree(deviceInput2);
  cudaFree(deviceOutput);
  gpuTKTime_stop(GPU, "Freeing GPU Memory");

  gpuTKSolution(args, hostOutput, inputLength);

  free(hostInput1);
  free(hostInput2);
  free(hostOutput);

  return 0;
}