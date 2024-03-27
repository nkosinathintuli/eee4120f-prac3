multi=multiplication
gold=multiplicationGoldenStandard

CXX=g++

# Linux OS
LIBS=-lOpenCL

# Default Linux
INC_DIRS=/user/local/cuda/include
LIB_DIRS=/user/lib/nvidia-current


$(gold):src/goldenStandard/multiplicationGoldenStandard.cpp
	$(CXX) -o bin/$@ $^ $(INC_DIRS:%=-I%) $(LIB_DIRS:%=-L%) $(LIBS)	

 
#$(multi): multiplication.cpp
#	$(CXX) -o $@ $^ $(INC_DIRS:%=-I%) $(LIB_DIRS:%=-L%) $(LIBS)

run_gold: $(gold)
	./bin/$(gold)

#run_multi: $(multi)
#	./bin/$(multi)


clean:
	rm -f bin/$(multi) bin/$(gold)