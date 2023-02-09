#!/bin/bash
#SBATCH --partition=upvd
#SBATCH --time=0:05:00
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --job-name=dot_product
#SBATCH --output=dot_product.%j.txt

# ================ optional OMP - settings (thread pinning)
# thread-placement options: cores, threads, sockets
# export OMP_PLACES=cores 
# echo Thread Placement: ${OMP_PLACES}

# # thread-binding options: close, spread
# export OMP_PROC_BIND=close
# echo Thread Binding Policy: ${OMP_PROC_BIND}

# =============== Run with different no of threads
NTHREADS=(1 2 3 4 6 8 12)
for i in ${NTHREADS[@]}
do
    echo Number of Threads = ${i} 
    OMP_NUM_THREADS=${i} make -s run
    echo 
done