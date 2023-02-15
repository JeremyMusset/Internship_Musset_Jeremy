FLAGS = -fopenmp -Ofast -w

exec : slurmtoexe
	./execution.slurm

compile : ./par_dot_prod.cpp ../include/*.h ../src/data/*.bin ../src/generation/*.cc ../src/dot_product/*.cc
	 g++ ../src/generation/*.cc ../src/dot_product/*.cc par_dot_prod.cpp -o par_dot_prod -lmpfr $(FLAGS)

comprun : compile 	
	./par_dot_prod

run :  	
	./par_dot_prod

slurmtoexe : 
	chmod a+x execution.slurm 