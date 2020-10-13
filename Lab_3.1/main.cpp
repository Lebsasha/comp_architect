//#include <math.h>
int pow (int x, int i)
{
	int ans=1;
	if (i-- !=0)
	{
	ans*=x;
	}
	return ans;
}
int main()
{
const unsigned int n=5;
int sum=0;
int curr_val=11;
for(int i=0;i<n;++i)
{
	sum+=curr_val;
	curr_val*=-2;
}
int sum1=111;
sum1-=111;
sum1=1*(pow(-2, n)-1)/((-2)-1);
return sum-sum1;
} 
