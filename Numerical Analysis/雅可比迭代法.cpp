#include <iostream>
#include <cmath>
#define n  3  
using namespace std;
double A[n][n] = {{8,-3,2},{4,11,-1},{6,3,12}};
double b[n] = {20,33,36};
double x[n];
double x2[n]; 
void jacobi()
{
	fill(x,x+n,0);
	fill(x2,x2+n,0);
	int k=7;//迭代次数
	for(int p=0;p<k;p++)
	{
		printf("第%d次迭代结果：\n",p);
		for(int i=0;i<n;i++)
		{
			printf("%.6lf\t",x[i]);
		}
		printf("\n\n");
		for(int i=0;i<n;i++)
		{
			double temp = 0;
			for(int j=0;j<n;j++)
			{
				if(j==i)
					continue;
				temp += (A[i][j]*x2[j]);
			}
			x[i]= (b[i]-temp)/A[i][i];
		} 
		for(int i=0;i<n;i++)
		{
			x2[i]=x[i];
		}		
	}
	return;
}
int main ()
{
	jacobi();
	printf("最终结果：\n");
	for(int i=0;i<n;i++)
	{
		printf("%.6lf\t",x[i]);
	}
	return 0; 
}

