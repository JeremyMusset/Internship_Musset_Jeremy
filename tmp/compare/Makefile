MKLROOT = /home/jerem/app/intel/oneapi/mkl/2023.0.0
PLTROOT = /home/jerem/app/matplotlib-cpp

DEBOG = -g  -fprofile-arcs -ftest-coverage 

FLAGS =  -w -O3 #-march=native
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
EXECVEC1 = compare_time_vec1
EXECVEC2 = compare_time_vec2
EXECNOVEC = compare_time_novec
EXECPRINT = compare_time_print
EXECROOF = roofline


compile : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXEC).cpp -o $(EXEC) $(FLAGS) $(LIBS) $(LIBS_MKL)

comprun : compile 	
	./$(EXEC)



FLAGSS = -O3 
FLAGS1 = -O3 -march=native
FLAGS2 = -march=native

compilenovec : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECNOVEC).cpp -o $(EXECNOVEC) -w $(LIBS) $(LIBS_MKL)

comprunnovec : compilenovec	
	./$(EXECNOVEC)
	
compilevec : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC).cpp -o $(EXECVEC) -w $(FLAGSS) $(LIBS) $(LIBS_MKL)

comprunvec : compilevec	
	./$(EXECVEC)

compilevec1 : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC1).cpp -o $(EXECVEC1) -w $(FLAGS1) $(LIBS) $(LIBS_MKL)

comprunvec1 : compilevec1 	
	./$(EXECVEC)

compilevec2 : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC2).cpp -o $(EXECVEC2) -w $(FLAGS2) $(LIBS) $(LIBS_MKL)

comprunvec2 : compilevec2 	
	./$(EXECVEC2)




test : compilenovec compilevec compilevec1 compilevec2
	echo "//-------------- NO VEC  -------------" > test.txt && ./$(EXECNOVEC) >> test.txt && echo " " && echo "//-------------- VEC : $(FLAGSS)  -------------" >> test.txt &&./$(EXECVEC) >> test.txt && echo " " && echo " // -------------- VEC  1 : $(FLAGS1)------------- " >> test.txt && ./$(EXECVEC1) >> test.txt && echo " " &&  echo " // --------------- VEC 2 : $(FLAGS2)-------------- " >> test.txt && ./$(EXECVEC1) >> test.txt


compileprint : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECPRINT).cpp -o $(EXECPRINT) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

plot : compileprint
	./$(EXECPRINT)


compileroof : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECROOF).cpp -o $(EXECROOF) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

roof : compileroof
	export OMP_NUM_THREADS=15 && ./$(EXECROOF)
