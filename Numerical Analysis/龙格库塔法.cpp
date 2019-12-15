#include <iostream>
#include <cstdio>
#include <cmath>
using namespace std; 
double f(double x)
{
	return sqrt(1+2*x);
} 
int main()
{
	//�Ľ�����-������ʽ
	double h=0.2;
	//��0��1��(1-0)/h=5 ����Ҫѭ��5�� 
	double k1,k2,k3,k4;
	double xn = 0,yn = 1;
	for(int i=0;i<5;i++)
	{
		k1 = yn - 2*xn/yn;
		k2 = yn + h*k1/2 - (2*xn+h)/(yn+h*k1/2);
		k3 = yn + h*k2/2 - (2*xn+h)/(yn+h*k2/2);
		k4 = yn + h*k3 - 2*(xn+h)/(yn+h*k3);
		yn = yn + h*(k1+2*k2+2*k3+k4)/6;
		xn += 0.2;
		printf("xn=%.1lf\tyn=%.4lf\ty(xn)=%.4lf\n",xn,yn,f(xn)); 
	}
	return 0;
}

