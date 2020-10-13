//#include <math.h>
bool if_5_pow (int x)
{
	while (x!=1)
	{
		if(!(x%5))
		{
		x/=5;
		}
		else
		return false;
	}
	return true;
}
int main()
{
int arr[]={1,2,3,4,5};
int sum=0;
for(int* p=arr;p<arr+5;++p)
{
	if (if_5_pow(*p))
		sum+=*p;
}
return sum;
} 
