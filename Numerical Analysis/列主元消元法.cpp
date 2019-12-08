#include <iostream>
#include <cmath>
#include <cstdlib>
#define n 3
using namespace std;
double A[n][n]={{-2.0000,1.072,5.643},{-1.000,3.712,4.623},{0.001,2.000,3.000}};
double b[n] = {3.000,2.000,1.000};
int function()
{
	int index,i,j,k;
	for(k=0;k<n-1;k++)
	{
		//找到这一列中的最大值 
		index=k;
		for(i=k+1;i<n;i++)
		{
			if(fabs(A[i][k])>fabs(A[index][k]))
			{
				index=i;
			}
		}
		if(A[index][k]==0)
			return -1;
		if(index!=0)
		{
			for(i=0;i<n;i++)
			{
				double t=A[index][i];
				A[index][i]=A[k][i];
				A[k][i]=t;
			}
			double t=b[index];
			b[index]=b[k];
			b[k] = t;
		}
		if(A[k][k]==0)
			return -1;
		//消元计算 
		double m ; 
		for(i=k+1;i<n;i++)
		{
			m = A[i][k]/A[k][k];
			for(j=0;j<n;j++)
			{
				A[i][j] -= (m*A[k][j]);
			}
			b[i] -= m*b[k];
		}
	}
	if(A[k][k]==0)
		return -1;
	//消元以后的矩阵
	printf("消元以后的矩阵：\n"); 
	for(i=0;i<n;i++)
	{
		for(j=0;j<n;j++)
		{
			printf("%.6lf\t",A[i][j]);
		}
		printf("\n");
	}
	printf("\n");
	for(i=0;i<n;i++)
	{
		printf("%.6lf\t",b[i]);
	}
	printf("\n"); 
	//回代求解
	b[n-1] = b[n-1]/A[n-1][n-1];
	for(i=n-2;i>=0;i--)
	{
		double t = 0;
		for(j=i+1;j<n;j++)
		{
			t += (A[i][j]*b[j]);
		}
		b[i] = (b[i]-t)/A[i][i];
	}
	printf("最终答案：\n"); 
	for(i=0;i<n;i++)
	{
		printf("%.6lf\t",b[i]);
	}
	printf("\n");
}
int main()
{
	function();
	return 0;
}

