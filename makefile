all: cuda cpp output

cuda:
	nvcc -c medianFilter.cu
cpp:
	g++ -c main.cpp EasyBMP/EasyBMP.cpp
	g++ -o test medianFilter.o EasyBMP.o main.o -L/usr/local/cuda/lib64 -lcudart
output:
	./test