Big Data in Finance final exam, Part B2, calculating PI using CUDA Thrust
=========================================================================

The CUDA Thrust program has several bugs. These bugs can be in the C code,
the makefile, or the PBS job file. Your task is to find these bugs,
fix them, compile and run the program, then share your results.

In this file, write any thoughts or comments that might help
improve your grade.

And, remember, to use Git you must first load Git:

  module load git
  
Similarly, to use CUDA (and CUDA Thrust):

  module load cuda
  
These may also be useful commands:

  module list
  
  module avail
  
And a hint to help you on your way. Remember that every GPU program has
two parts: a CPU part and a GPU part. To run this example you will have
to engage, at a minimum, at least 1 CPU and at least 1 GPU.




++++++++++++++++++++++++++

1. cuda-thrust.cu       should be          cub.thrust.c

2. line 28, **device**    should be          __device__

3. include first two head files

4. line 24
return (((p.x-0.5)*(p.x-0.5)+(p.y-0.5)*(p.y-0.5))<0.25) ? 1 : 1;

should be

return (((p.x-0.5)*(p.x-0.5)+(p.y-0.5)*(p.y-0.5))<0.25) ? 1 : 0;


5. cuda_thrust.pbs
line 18
./cudathrust    should be      ./cuda-thrust


