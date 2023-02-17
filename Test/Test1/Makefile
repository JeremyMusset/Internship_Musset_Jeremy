FLAGS = -fopenmp -Ofast -w

exec : slurmtoexe
	./execution.slurm

compile : 
	 g++ ../../src/generation/*.cc ../../src/dot_product/*.cc ../../src/test/*.cc test.cpp -o test -lmpfr $(FLAGS)

comprun : compile 	
	./test

run :  	
	./test

slurmtoexe : 
	chmod a+x execution.slurm 

cleanerr : 
	rm -r Error && mkdir Error && cd Error && mkdir parallel && mkdir sequential && cd parallel && mkdir common && mkdir rare_blas_hybrid && mkdir rare_blas_online && cd .. && cd sequential && mkdir common && mkdir rare_blas_hybrid && mkdir rare_blas_online && cd ../../
