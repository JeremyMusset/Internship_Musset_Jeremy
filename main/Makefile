FLAGS = -O3 -w
LIBS = -lmpfr -lgsl -lgslcblas -lm -fopenmp -lopenblas
INC = ../src/generation/*.cc ../src/dot_product/*.cc ../src/compare/*.cc -L/home/jerem/app/blaspp/lib -I/usr/local/blaspp/include 



compile : 
	g++ $(INC) dot_product.cpp -o dot_prod $(LIBS) $(FLAGS)

comprun : compile 	
	./dot_prod
	
