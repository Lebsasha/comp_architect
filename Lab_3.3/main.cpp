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
#include <iostream>
#include <iomanip>
/**
 * @result Prints in matrix Nstr × Nstb form numbers.
 */
template<typename T>
void View (T* pArray, size_t Nstr, const size_t Nstb) noexcept
{
    while (Nstr--)
    {
        for (size_t j = 0; j < Nstb-1; ++j)
        {
            std::cout<<std::setw(3)<<(*pArray)<<" ";
            pArray++;
        }
        std::cout<<std::setw(3)<<*pArray++;
        std::cout<<std::endl;
    }
    std::cout<<std::endl;
}
int main()
{
int A[]={1,2,3, 4,5,6, 7,8,8};
int C[9]={0};
int n = sizeof(A)/sizeof(int)-6;
for (int i=0; i < n; ++i)
for (int k=0; k < n; ++k)
for (int j=0; j < n; ++j)
{
    C[i*n+k]+=A[i*n+j]*A[k*n+j];
}
View(A, 3, 3);
View(C, 3, 3);
//for(int* p=A;p<A+5;++p)
//{
//	if (if_5_pow(*p))
//		sum+=*p;
//}
return 0;
}
