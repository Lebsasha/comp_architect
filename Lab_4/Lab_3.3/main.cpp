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
extern "C" void multiply_matrix(int* pA, int* pC, int n);
int main()
{
int A[]={1,2,3, 4,5,6, 7,8,8};
int C[9]={0};
int n = sizeof(A)/sizeof(int)-6;
multiply_matrix(A,C,n);
View(A, 3, 3);
View(C, 3, 3);
return 0;
}
