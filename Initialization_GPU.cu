__global__ void InitializeArray_GPU(double *Array,int Dim,double InitialValue)
{
	int tid = threadIdx.x + blockIdx.x * blockDim.x;
	while(tid<Dim)
	{
		Array[tid] = InitialValue;
		tid += gridDim.x*blockDim.x;
	}
}