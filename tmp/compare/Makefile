MKLROOT = /home/jerem/app/intel/oneapi/mkl/2023.0.0
PLTROOT = /home/jerem/app/matplotlib-cpp
COMPG = g++
# COMP = icpx -I/usr/include/c++/11/ -I/usr/include/x86_64-linux-gnu/c++/11/ -L/usr/local/lib -L/usr/lib/gcc/x86_64-linux-gnu/11/ -I/opt/intel/oneapi/advisor/2023.0.0/lib64/
COMPI = icpx -I/usr/include/c++/11/ -I/usr/include/x86_64-linux-gnu/c++/11/ -L/usr/local/lib -L/usr/lib/gcc/x86_64-linux-gnu/11/ -I/opt/intel/oneapi/advisor/2023.0.0/lib64/ -lmpfr
DEBOG = -g  -fprofile-arcs -ftest-coverage 

FLAGS =  -w 
LIBS = -lmpfr -lgsl -lgslcblas -lopenblas -lpython3.10 -lQt5Widgets -L/home/jerem/app/blaspp/lib -fopenmp # -lm -lpthread -fopenmp
BIB =  -I$(PLTROOT)/ -I/usr/include/python3.10 -I/usr/local/blaspp/include 
INC = ../generation/*.cc ../dot_product/*.cc ../compare/*.cc 

BIB_MKL = -m64 -I${MKLROOT}/include #-I${MKLROOT}/lib/intel64/
LIBS_MKL = -L${MKLROOT}/lib/intel64 -Wl,--no-as-needed -lmkl_intel_ilp64 -lmkl_gnu_thread -lmkl_core -lgomp  -lm -ldl


# EXEC = compare_dot_product
# EXEC = compare_par
# EXEC = compare_time
EXEC = Compare
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
	$(COMPG) $(INC) $(BIB) $(BIB_MKL) $(EXEC).cpp -o $(EXEC) $(FLAGS) $(LIBS) $(LIBS_MKL)

comparea : compile 	
	./$(EXEC)



FLAGSS = -O3 -march=native -funsafe-math-optimizations -ftree-vectorize
FLAGS1 = 
FLAGS2 = 
# FLAGS3 = 
# FLAGS4 = 
# FLAGS5 =
# FLAGS6 = 


FLAGS3 = -O3 -xCORE-AVX2 -vec # -xCOMMON-AVX512 -xCOMMON-AVX2 -qopt-multiple-gather-scatter-by-shuffles -vec --qopt-dynamic-align -msve-vector-bits=<value> --mprefer-vector-width=<value> 
FLAGS4 = -O3 -xCORE-AVX512 -vec
FLAGS5 = 
FLAGS6 = -O3 -march=native -ftree-vectorize -funsafe-math-optimizations

compilenovec : 
	$(COMPG) $(INC) $(BIB) $(BIB_MKL) $(EXECNOVEC).cpp -o $(EXECNOVEC) -w $(LIBS) $(LIBS_MKL)

comprunnovec : compilenovec	
	./$(EXECNOVEC)
	
compilevec : 
	$(COMPG) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC).cpp -o $(EXECVEC) -w $(FLAGSS) $(LIBS) $(LIBS_MKL)

comprunvec : compilevec	
	./$(EXECVEC)

compilevec1 : 
	$(COMPG) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC1).cpp -o $(EXECVEC1) -w $(FLAGS1) $(LIBS) $(LIBS_MKL)

comprunvec1 : compilevec1 	
	./$(EXECVEC)

compilevec2 : 
	$(COMPI) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC2).cpp -o $(EXECVEC2) -w $(FLAGS2) $(LIBS) $(LIBS_MKL)

comprunvec2 : compilevec2 	
	./$(EXECVEC2)

compilevec3 : 
	$(COMPI) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC3).cpp -o $(EXECVEC3) -w $(FLAGS3) $(LIBS) $(LIBS_MKL)

comprunvec3 : compilevec3 	
	./$(EXECVEC3)

compilevec4 : 
	$(COMPI) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC4).cpp -o $(EXECVEC4) -w $(FLAGS4) $(LIBS) $(LIBS_MKL)

comprunvec4 : compilevec4 	
	./$(EXECVEC4)

compilevec5 : 
	$(COMPI) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC5).cpp -S -w $(FLAGS5) $(LIBS) $(LIBS_MKL)

comprunvec5 : compilevec5	
	./$(EXECVEC5)

compilevec6 : 
	$(COMPI) $(INC) $(BIB) $(BIB_MKL) $(EXECVEC6).cpp -S -w $(FLAGS6) $(LIBS) $(LIBS_MKL)

comprunvec6 : compilevec6 	
	./$(EXECVEC6)


compilenovecic : 
	icx-cc $(EXECNOVEC).cpp -o $(EXECNOVEC)

comprunnovecic : compilenovec	
	./$(EXECNOVEC)


test : compilenovec compilevec compilevec1 compilevec2 compilevec3 compilevec4 
	echo "//-------------- NO   -------------" > test.txt && ./$(EXECNOVEC) >> test.txt && echo " " >> test.txt && echo "//-------------- VEC : $(FLAGSS)  -------------" >> test.txt &&./$(EXECVEC) >> test.txt && echo " " >> test.txt && echo " // -------------- VEC  1 : $(FLAGS1)------------- " >> test.txt && ./$(EXECVEC1) >> test.txt && echo " " >> test.txt &&  echo " // --------------- VEC 2 : $(FLAGS2)-------------- " >> test.txt && ./$(EXECVEC2) >> test.txt && echo " " >> test.txt && echo " // -------------- VEC  3 : $(FLAGS3)------------- " >> test.txt && ./$(EXECVEC3) >> test.txt && echo " " >> test.txt &&  echo " // --------------- VEC 4 : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt 

testparvec : compilenovec compilevec4 
	echo "//-------------- NO   -------------" > test.txt && ./$(EXECNOVEC) >> test.txt && echo " " &&  echo " // --------------- VEC : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt 

testparin : compilenovec compilevec compilevec1 compilevec4 compilevec5 compilevec6
	echo "//-------------- NO FLAGS  -------------" >> test.txt && ./$(EXECNOVEC) >> test.txt && echo " " >> test.txt &&  echo " " // --------------- $(FLAGSS)-------------- " >> test.txt && ./$(EXECVEC) >> test.txt  && echo " " >> test.txt &&  echo " // --------------- $(FLAGS1) -------------- " >> test.txt && ./$(EXECVEC1) >> test.txt && echo " " >> test.txt &&  echo " // --------------- VEC INSIDE + $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt && echo " " >> test.txt echo "//-------------- VEC INSIDE + $(FLAGS5)  -------------" >> test.txt && ./$(EXECVEC5) >> test.txt && echo " " >> test.txt &&  echo " // --------------- VEC INSIDE + $(FLAGS6)-------------- " >> test.txt && ./$(EXECVEC6) >> test.txt       

testfma :  compilevec3 compilevec4 compilevec5 compilevec6
	echo " // -------------- NO FMA : $(FLAGS3)------------- " >> test.txt && ./$(EXECVEC3) >> test.txt && echo " " >> test.txt &&  echo " // --------------- NO FMA : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt  && echo " " >>test.txt && echo " // -------------- FMA : $(FLAGS5)------------- " >> test.txt && ./$(EXECVEC5) >> test.txt && echo " " >> test.txt &&  echo " // --------------- FMA : $(FLAGS6)-------------- " >> test.txt && ./$(EXECVEC6) >> test.txt                                        

testcomp : compilenovec compilevec compilevec1 compilevec2 compilevec3 compilevec4 
	echo "//-------------- GCC + NO   -------------" >> test.txt && ./$(EXECNOVEC) >> test.txt && echo " " && echo "//-------------- GCC + YMM : $(FLAGSS)  -------------" >> test.txt &&./$(EXECVEC) >> test.txt && echo " " && echo " // -------------- GCC + ZMM : $(FLAGS1)------------- " >> test.txt && ./$(EXECVEC1) >> test.txt && echo " " &&  echo " // --------------- ICPX + NO -------------- " >> test.txt && ./$(EXECVEC2) >> test.txt && echo " " && echo " // -------------- ICPX + YMM : $(FLAGS3)------------- " >> test.txt && ./$(EXECVEC3) >> test.txt && echo " " &&  echo " // --------------- ICPX + ZMM : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt 


testfreq : compilenovec compilevec compilevec1 compilevec2 compilevec3 compilevec4 
	echo "//-------------- PAR + NO   -------------" > test.txt && ./$(EXECNOVEC) >> test.txt && echo " " && echo "//-------------- PAR + VEC : $(FLAGSS)  -------------" >> test.txt &&./$(EXECVEC) >> test.txt && echo " " && echo " // -------------- PAR + VEC  1 : $(FLAGS1)------------- " >> test.txt && ./$(EXECVEC1) >> test.txt && echo " " &&  echo " // --------------- PAR + VEC 2 : $(FLAGS2)-------------- " >> test.txt && ./$(EXECVEC2) >> test.txt && echo " " && echo " // -------------- PAR + VEC  3 : $(FLAGS3)------------- " >> test.txt && ./$(EXECVEC3) >> test.txt && echo " " &&  echo " // --------------- PAR + VEC 4 : $(FLAGS4)-------------- " >> test.txt && ./$(EXECVEC4) >> test.txt 


compileprint : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECPRINT).cpp -o $(EXECPRINT) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

plot : compileprint
	./$(EXECPRINT)


compileroof : 
	g++ $(INC) $(BIB) $(BIB_MKL) $(EXECROOF).cpp -o $(EXECROOF) $(FLAGS) -march=native $(LIBS) $(LIBS_MKL)

roof : compileroof
	export OMP_NUM_THREADS=15 && ./$(EXECROOF)

EXECSYCL = testsycl3

COMPSYCL = icpx 
# COMPSYCL = dpcpp

INSYCL = -I/usr/include/c++/11/ -I/usr/include/x86_64-linux-gnu/c++/11/ -L/usr/local/lib -L/usr/lib/gcc/x86_64-linux-gnu/11/ -I/opt/intel/oneapi/advisor/2023.0.0/lib64/
LIBSYCL = -fsycl -fsycl-targets=spir64

compsycl : 
	$(COMPSYCL) $(INSYCL) $(LIBSYCL) $(EXECSYCL).cpp -o $(EXECSYCL) -w -lm

sycl : compsycl
	./$(EXECSYCL)


compilecompare : 
	 g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ Compare.cpp -o Compare -w -lmpfr -fopenmp -lm 

compare : compilecompare 	
	./Compare







