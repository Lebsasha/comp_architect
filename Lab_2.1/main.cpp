int main()
{
int arr[]={3,4,5,1};
int *p=arr;
int* pEnd = arr+4;
int minn=arr[0];
while(p != pEnd)
{
for(int&x:arr)
if (x<minn)
{
minn=x;
}
*p=minn;
++p;
}
} 
