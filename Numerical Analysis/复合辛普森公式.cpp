#include <iostream>
#include <cmath> 
#define PI 3.14159265
using namespace std;
double function(double x)
{
	return sin(x);
}
double integral(double a,double b,int n)
{
	double result = function(a)+function(b);
	double step = (b-a)/n;
	double t1 = 0,t2 = 0;
	for(int i=1;i<n;i++)
	{
		t1 += function(a+i*step);
	}
	for(int i=0;i<n;i++)
	{
		t2 += function(a+i*step+step/2);
	}
	result += (2*t1+4*t2);
	result = result*step/6;
	return result;
}
int main ()
{
	double result = integral(0,PI,5);
	printf("%.6lf",result);
	return 0; 
}

