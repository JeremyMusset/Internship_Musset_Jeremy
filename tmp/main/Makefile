compilecomparetime : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ compare_time.cpp -o compare_time -w -lmpfr -fopenmp -lm 

comparetime : compilecomparetime 	
	./compare_time

compilecomparecond : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 compare_cond.cpp -o compare_cond -w -lpython3.10 -lQt5Widgets -lmpfr -fopenmp -lm 

comparecond : compilecomparecond 	
	./compare_cond

compileprint : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 courbe.cpp -o courbe -lpython3.10 -lQt5Widgets -lmpfr -fopenmp -lm 

plot : compileprint
	./courbe

pyplot :
	python3 courbe.py

compilepycond : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 compare_cond_py.cpp -o compare_cond_py -O3 -march=native -w -lpython3.10 -lQt5Widgets -lmpfr -fopenmp -lm 

pycond : compilepycond 	
	./compare_cond_py



compiletest : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 testgen.cpp -o testgen -w -lpython3.10 -lQt5Widgets -lmpfr -fopenmp -lm 

testgen : compiletest
	./testgen