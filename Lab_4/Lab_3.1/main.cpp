//#include <math.h>
//bool if_5_pow (int x)
//{
//	while (x!=1)
//	{
//		if(!(x%5))
//		{
//		x/=5;
//		}
//		else
//		return false;
//	}
//	return true;
//}
#include <iostream>
extern "C" bool if_5_pow(int x);
int main()
{
int arr[]={1,2,3,4,5, 10 ,11, 125, 1125, 3125};
int size=sizeof(arr)/sizeof(arr[1]);
int sum=0;
for(int* p=arr;p<arr+size;++p)
{
	if (if_5_pow(*p))
		sum+=*p;
}
std::cout<<sum<<std::endl;
return 0;
}
