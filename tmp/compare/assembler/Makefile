MKLROOT = /home/jerem/app/intel/oneapi/mkl/2023.0.0
PLTROOT = /home/jerem/app/matplotlib-cpp

FLAGS = -w -O3 -mavx512f -funsafe-math-optimizations 

LIBS = -lmpfr -lgsl -lgslcblas -lopenblas -lpython3.10 -lQt5Widgets -L/home/jerem/app/blaspp/lib -fopenmp   # -lm -lpthread -fopenmp
BIB =  -I$(PLTROOT)/ -I/usr/include/python3.10 -I/usr/local/blaspp/include 
INC = ../../generation/*.cc ../../dot_product/*.cc ../../compare/*.cc  

BIB_MKL = -m64 -I${MKLROOT}/include -I${MKLROOT}/lib/intel64/
LIBS_MKL = -L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_intel_ilp64 -lmkl_gnu_thread -lmkl_core -lgomp -lpthread -lm -ldl


# EXEC = compare_dot_product
EXEC = ../compare_par
# EXEC = compare_time
# EXEC = compare_cond


compile : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXEC).cpp -S $(FLAGS) $(LIBS) $(LIBS_MKL) 

comprun : compile 	
	export OMP_NUM_THREADS=15 && ./$(EXEC)
	
