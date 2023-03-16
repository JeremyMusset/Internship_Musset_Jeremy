MKLROOT = /home/jerem/app/intel/oneapi/mkl/2023.0.0
PLTROOT = /home/jerem/app/matplotlib-cpp

DEBOG = -g  -fprofile-arcs -ftest-coverage 

FLAGS =  -w -march=native #-O3
LIBS = -lmpfr -lgsl -lgslcblas -lopenblas -lpython3.10 -lQt5Widgets -L/home/jerem/app/blaspp/lib # -lm -lpthread -fopenmp
BIB =  -I$(PLTROOT)/ -I/usr/include/python3.10 -I/usr/local/blaspp/include 
INC = ../generation/*.cc ../dot_product/*.cc ../compare/*.cc 

BIB_MKL = -m64 -I${MKLROOT}/include #-I${MKLROOT}/lib/intel64/
LIBS_MKL = -L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_intel_ilp64 -lmkl_gnu_thread -lmkl_core -lgomp  -lm -ldl


# EXEC = compare_dot_product
# EXEC = compare_par
EXEC = compare_time
# EXEC = compare_cond
# EXEC = compare_bytes_flops
# EXEC = compare_th

EXECVEC = compare_time_vec
EXECNOVEC = compare_time_novec
EXECPRINT = compare_time_print
EXECROOF = roofline


compile : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXEC).cpp -o $(EXEC) $(FLAGS) $(LIBS) $(LIBS_MKL)

comprun : compile 	
	./$(EXEC)


compilenovec : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECNOVEC).cpp -o $(EXECNOVEC) $(FLAGS)  $(LIBS) $(LIBS_MKL)

comprunnovec : compilenovec	
	./$(EXECNOVEC)
	
compilevec : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC).cpp -o $(EXECVEC) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

comprunvec : compileexp 	
	./$(EXECVEC)

test : compilenovec compilevec
	echo "NO VEC : " > test.txt && ./$(EXECNOVEC) >> test.txt && echo "VEC : " >> test.txt &&./$(EXECVEC) >> test.txt


compileprint : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECPRINT).cpp -o $(EXECPRINT) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

plot : compileprint
	./$(EXECPRINT)


compileroof : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECROOF).cpp -o $(EXECROOF) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

roof : compileroof
	export OMP_NUM_THREADS=15 && ./$(EXECROOF)
