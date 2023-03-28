MKLROOT = /home/jerem/app/intel/oneapi/mkl/2023.0.0
PLTROOT = /home/jerem/app/matplotlib-cpp

DEBOG = -g  -fprofile-arcs -ftest-coverage 

FLAGS =  -w -O3 -funsafe-math-optimizations #-mavx512f 
LIBS = -lmpfr -lgsl -lgslcblas -lopenblas -lpython3.10 -lQt5Widgets -L/home/jerem/app/blaspp/lib -fopenmp # -lm -lpthread -fopenmp
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
EXECVEC3 = compare_time_vec3
EXECVEC4 = compare_time_vec4
EXECVEC5 = compare_time_vec5
EXECVEC6 = compare_time_vec6
EXECNOVEC = compare_time_novec
EXECPRINT = compare_time_print
EXECROOF = roofline


compile : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXEC).cpp -o $(EXEC) $(FLAGS) $(LIBS) $(LIBS_MKL)

comprun : compile 	
	./$(EXEC)



FLAGSS = -O3
FLAGS1 = -O3 -march=native
FLAGS2 = -O3 -mavx512f
FLAGS3 = #-O3 -march=skylake-avx512
FLAGS4 = -O3 -mavx512f -funsafe-math-optimizations 
FLAGS5 = #-O3 -march=native -funsafe-math-optimizations
FLAGS6 = -O3 -mavx512f -funsafe-math-optimizations  

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

compilevec3 : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC3).cpp -o $(EXECVEC3) -w $(FLAGS3) $(LIBS) $(LIBS_MKL)

comprunvec3 : compilevec3 	
	./$(EXECVEC3)

compilevec4 : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC4).cpp -o $(EXECVEC4) -w $(FLAGS4) $(LIBS) $(LIBS_MKL)

comprunvec4 : compilevec4 	
	./$(EXECVEC4)

compilevec5 : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC5).cpp -o $(EXECVEC5) -w $(FLAGS5) $(LIBS) $(LIBS_MKL)

comprunvec5 : compilevec5	
	./$(EXECVEC5)

compilevec6 : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECVEC6).cpp -o $(EXECVEC6) -w $(FLAGS6) $(LIBS) $(LIBS_MKL)

comprunvec6 : compilevec6 	
	./$(EXECVEC6)


compilenovecic : 
	icx-cc $(EXECNOVEC).cpp -o $(EXECNOVEC)

comprunnovecic : compilenovec	
	./$(EXECNOVEC)


test : compilenovec compilevec compilevec1 compilevec2 compilevec3 compilevec4 compilevec5 compilevec6
	echo "//-------------- NO   -------------" > test.txt && ./$(EXECNOVEC) >> test.txt && echo " " && echo "//-------------- VEC : $(FLAGSS)  -------------" >> test.txt &&./$(EXECVEC) >> test.txt && echo " " && echo " // -------------- VEC  1 : $(FLAGS1)------------- " >> test.txt && ./$(EXECVEC1) >> test.txt && echo " " &&  echo " // --------------- VEC 2 : $(FLAGS2)-------------- " >> test.txt && ./$(EXECVEC2) >> test.txt && echo " " && echo " // -------------- VEC  1 : $(FLAGS3)------------- " >> test.txt && ./$(EXECVEC3) >> test.txt && echo " " &&  echo " // --------------- VEC 4 : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt && echo " " && echo " // -------------- VEC  5 : $(FLAGS5)------------- " >> test.txt && ./$(EXECVEC5) >> test.txt && echo " " &&  echo " // --------------- VEC 6 : $(FLAGS6)-------------- " >> test.txt && ./$(EXECVEC6) >> test.txt                                        


testpar : compilenovec compilevec4 compilevec5 compilevec6
	echo "//-------------- NO   -------------" > test.txt && ./$(EXECNOVEC) >> test.txt && echo " " &&  echo " // --------------- VEC : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt && echo " " &&  echo " // --------------- VEC INSIDE -------------- " >> test.txt && ./$(EXECVEC5) >> test.txt && echo " " &&  echo " // --------------- VEC : INSIDE + $(FLAGS6)-------------- " >> test.txt && ./$(EXECVEC6) >> test.txt                          

testfma :  compilevec3 compilevec4 compilevec5 compilevec6
	echo " // -------------- NO VEC : $(FLAGS3)------------- " >> test.txt && ./$(EXECVEC3) >> test.txt && echo " " &&  echo " // --------------- VEC 4 : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt && echo " " && echo " // -------------- NO VEC FMA : $(FLAGS5)------------- " >> test.txt && ./$(EXECVEC5) >> test.txt && echo " " &&  echo " // --------------- VEC FMA : $(FLAGS6)-------------- " >> test.txt && ./$(EXECVEC6) >> test.txt                                        


compileprint : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECPRINT).cpp -o $(EXECPRINT) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

plot : compileprint
	./$(EXECPRINT)


compileroof : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECROOF).cpp -o $(EXECROOF) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

roof : compileroof
	export OMP_NUM_THREADS=15 && ./$(EXECROOF)


COMPSYCL = icpx 
# COMPSYCL = dpcpp

INSYCL = -I/home/jerem/app/intel/oneapi/compiler/2023.0.0/linux/include/ -I/usr/include/c++/11 -I/usr/include/x86_64-linux-gnu/c++/11/
LIBSYCL = -fsycl -fsycl-targets=spir64

compsycl : 
	$(COMPSYCL) $(INSYCL) $(LIBSYCL) compare_sycl.cpp -o compare_sycl







