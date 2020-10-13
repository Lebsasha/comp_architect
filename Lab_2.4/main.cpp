#include <math.h>

int main()
{
unsigned int i=1219;
bool f=1;
for(int j=0;j<4;++j)
{
	if((i<<j)%2!=(i>>j)%2)
		f=0;
}
return f;
} 
