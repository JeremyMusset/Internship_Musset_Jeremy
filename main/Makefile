FLAGS = -O3 -w
LIBS = -lmpfr -lgsl -lgslcblas -lm -fopenmp -lopenblas -lblaspp
INC = ../src/generation/*.cc ../src/dot_product/*.cc ../src/compare/*.cc -L/home/jerem/app/blaspp/lib -I/usr/local/blaspp/include 



compile : 
	g++ $(INC) compare_dot_product.cpp -o comp_dot_prod $(LIBS) $(FLAGS)

comprun2 : compile 	
	./comp_dot_prod
	
