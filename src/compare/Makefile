FLAGS = -O3 -w
LIBS = -lmpfr -lgsl -lgslcblas -lm -fopenmp -lopenblas
INC = ../generation/*.cc ../dot_product/*.cc ../compare/*.cc -L/home/jerem/app/blaspp/lib -I/usr/local/blaspp/include 

# EXEC = compare_dot_product
EXEC = courbe


compile : 
	g++ $(INC) $(EXEC).cpp -o $(EXEC) $(LIBS) $(FLAGS)

comprun : compile 	
	./$(EXEC)
	
