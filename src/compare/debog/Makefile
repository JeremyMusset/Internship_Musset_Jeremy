MKLROOT = /home/jerem/app/intel/oneapi/mkl/2023.0.0
PLTROOT = /home/jerem/app/matplotlib-cpp
GOOGLEROOT = /home/jerem/app/benchmark

FLAGS = -O0 -w 
LIBS = -lmpfr -lgsl -lgslcblas -lopenblas -lpython3.10 -lQt5Widgets -L/home/jerem/app/blaspp/lib -fopenmp   # -lm -lpthread -fopenmp
BIB =  -I$(PLTROOT)/ -I/usr/include/python3.10 -I/usr/local/blaspp/include 
INC = ../../generation/*.cc ../../dot_product/*.cc ../../compare/*.cc  

BIB_MKL = -m64 -I${MKLROOT}/include -I${MKLROOT}/lib/intel64/
LIBS_MKL = -L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_intel_ilp64 -lmkl_gnu_thread -lmkl_core -lgomp -lpthread -lm -ldl

BIB_GOOGLE = -isystem$(GOOGLEROOT)/include -L$(GOOGLEROOT)/build/src -lbenchmark 

# EXEC = valgrind00
EXEC = google00


compile : 
	g++ -g $(INC) $(BIB) $(BIB_MKL) $(BIB_GOOGLE) $(EXEC).cpp -o valgrind00 $(FLAGS) $(LIBS) $(LIBS_MKL) 

comprun : compile 	
	export OMP_NUM_THREADS=15 && ./$(EXEC)
	
