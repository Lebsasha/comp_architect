#include <math.h>
#include <iostream>
int main()
{
unsigned int i=219;
bool f=1;
for(int j=0;j<4;++j)
{
	if(((i>>(7-j))%2!=(i>>j)%2)
		f=0;
std::cout<<((i>>j)%2);
}
std::cout<<f;
return f;
} 
