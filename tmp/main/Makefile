compilecomparetime : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 compare_time.cpp -o compare_time -w -lmpfr -fopenmp -lpython3.10 -lQt5Widgets -lm 

time : compilecomparetime 	
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

compiledeb : 
	g++ -O0 ../generation/*.cc ../dot_product/*.cc debog.cpp -o debog -w -O3 -lmpfr -fopenmp -lm 

deb : compiledeb	
	./debog


compiledeb2 : 
	g++ -O0 ../generation/*.cc ../dot_product/*.cc debog2.cpp -o debog2 -w -lmpfr -fopenmp -lm 

deb2 : compiledeb2	
	./debog2


compiletest : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 testgen.cpp -o testgen -w -lpython3.10 -lQt5Widgets -lmpfr -fopenmp -lm 

testgen : compiletest
	./testgen

compileptime : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 print_time.cpp -o print_time -w -lmpfr -fopenmp -lpython3.10 -lQt5Widgets -lm 

ptime : compileptime 	
	./print_time



compilepycondo : 
	g++ ../generation/*.cc ../dot_product/*.cc -I/home/jerem/app/matplotlib-cpp/ -I/usr/include/python3.10 compare_cond_o.cpp -o compare_cond_o -w -lpython3.10 -lQt5Widgets -lmpfr -fopenmp -lm 

condo : compilepycondo
	./compare_cond_o