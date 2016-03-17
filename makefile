
all:
  nvcc -o cuda-thrust cuda-thrust.c
  
clean:
  rm cuda-thrust
