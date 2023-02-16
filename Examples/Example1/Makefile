FLAGS = -fopenmp -Ofast -w

exec : slurmtoexe
	./execution.slurm

compile : ./test.cpp ../../include/*.h ../../src/data/*.bin ../../src/generation/*.cc ../../src/dot_product/*.cc
	 g++ ../../src/generation/*.cc ../../src/dot_product/*.cc test.cpp -o test -lmpfr $(FLAGS)

comprun : compile 	
	./test

run :  	
	./test

slurmtoexe : 
	chmod a+x execution.slurm 