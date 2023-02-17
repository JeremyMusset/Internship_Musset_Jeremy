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