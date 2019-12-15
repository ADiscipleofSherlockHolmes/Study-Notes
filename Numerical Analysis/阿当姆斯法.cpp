#include <iostream>
#include <cstdio>
#include <cmath>
using namespace std;
int main()
{
	double x[20],y[20],y1[20],y2[20];
	int i=2;
	x[0]=0,y[0]=1,y1[0]=1,y2[0]=1;
	x[1]=0.1,y[1]=exp(-x[1])+x[1],y1[1]=y[1],y2[1]=y[1];
	x[2]=0.2,y[2]=exp(-x[2])+x[2],y1[2]=y[2],y2[2]=y[2];
	y1[3] = exp(-0.3)+0.3;
	do
	{
		i++;
		x[i]=x[i-1]+0.1;
		y2[i]=exp(-x[i])+x[i];//准确值 
		if(i==3)
		{
			y[i]=(22.1*y[i-1]+0.5*y[i-2]-0.1*y[i-3]+0.24*(i-3)+3)/24.9;
		}
		else
		{
			y[i]=(22.1*y[i-1]+0.5*y[i-2]-0.1*y[i-3]+0.24*(i-3)+3)/24.9;
			y1[i]=(18.5*y1[i-1]+5.9*y1[i-2]-3.7*y1[i-3]+0.9*y1[i-4]+0.24*(i-4)+3.24)/24;
		}
	}while(i<=10); 
	for(i=0;i<=10;i++)
	{
		printf("当i=%d时,x[%d]=%lf\n",i,i,x[i]);
        printf("真值：y[%d]=%f\n",i,y2[i]);
		printf("隐式：y[%d]=%lf,|y(x%d)-y(%d)|=%lf\n",i,y[i],i,i,fabs(y2[i]-y[i]));
		printf("显式：y[%d]=%lf,|y(x%d)-y(%d)|=%lf\n",i,y1[i],i,i,fabs(y2[i]-y1[i]));
	}
	return 0; 
}

