#!/bin/bash
#SBATCH --partition=upvd
#SBATCH --time=0:05:00
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --job-name=dot_product
#SBATCH --output=output_dot_product.txt

echo "TEST"
# OMP_NUM_THREADS=2 make -s run