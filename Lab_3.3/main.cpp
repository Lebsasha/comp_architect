main()
{
int A[]={1,2,3, 4,5,6, 7,8,8};
int C[9]={0};
int n = sizeof(A)/sizeof(int)-6;
for (int i=0; i < n; ++i)
for (int k=0; k < n; ++k)
for (int j=0; j < n; ++j)
    C[i*n+k]+=A[i*n+j]*A[k*n+j];
int x=0xffff;
}
