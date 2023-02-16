FLAGS = -fopenmp -Ofast -w

exec : slurmtoexe
	./execution.slurm

compile : ./dot_product.cpp ../include/*.h ../src/data/*.bin ../src/generation/*.cc ../src/dot_product/*.cc
	g++ ../src/generation/*.cc ../src/dot_product/*.cc dot_product.cpp -o dot_prod -lmpfr $(FLAGS)

comprun : compile 	
	./dot_prod

run :  	
	./dot_prod

slurmtoexe : 
	chmod a+x execution.slurm 