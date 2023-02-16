FLAGS = -Ofast -w -lmpfr

exec : slurmtoexe
	./execution.slurm

compile :
	g++ ../src/generation/*.cc ../src/dot_product/Rare_Blas.cc ../src/dot_product/correct_rounding.cc ../src/dot_product/common.cc ../src/dot_product/eft.cc ../src/dot_product/sequential.cc seq_dot_prod.cpp -o seq_dot_prod -lmpfr $(FLAGS)

comprun : compile 	
	./seq_dot_prod

run :  	
	./seq_dot_prod

slurmtoexe : 
	chmod a+x execution.slurm 