FLAGS = -fopenmp -Ofast -w

exec : slurmtoexe
	./execution.slurm

compile :
	 g++ ../generation/*.cc ../dot_product/*.cc par_dot_prod.cpp -o par_dot_prod -lmpfr $(FLAGS)

comprun : compile 	
	./par_dot_prod

run :  	
	./par_dot_prod

slurmtoexe : 
	chmod a+x execution.slurm 