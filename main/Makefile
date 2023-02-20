FLAGS = -fopenmp -Ofast -w

exec : slurmtoexe
	./execution.slurm

compile : 
	g++ ../src/generation/*.cc ../src/dot_product/*.cc dot_product.cpp -o dot_prod -lmpfr $(FLAGS)

comprun : compile 	
	./dot_prod

run :  	
	./dot_prod

slurmtoexe : 
	chmod a+x execution.slurm 

compilecompare : 
	g++ ../src/generation/*.cc ../src/dot_product/*.cc ../src/compare/*.cc compare_dot_product.cpp -o comp_dot_prod -lmpfr $(FLAGS)

comprun2 : compilecompare 	
	./comp_dot_prod
	