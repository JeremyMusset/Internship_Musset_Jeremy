FLAGS =

exec : slurmtoexe
	./execution.slurm

compile :
	g++ ../generation/*.cc ../dot_product/Rare_Blas.cc ../dot_product/correct_rounding.cc ../dot_product/common.cc ../dot_product/eft.cc ../dot_product/sequential.cc seq_dot_prod.cpp -o seq_dot_prod -lmpfr $(FLAGS)

comprun : compile 	
	./seq_dot_prod

run :  	
	./seq_dot_prod

slurmtoexe : 
	chmod a+x execution.slurm 