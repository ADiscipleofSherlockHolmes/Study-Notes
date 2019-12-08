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
	double sum = 0;
	double step = (b-a)/n; 
	sum += (function(a)+function(b))/2;
	for(int i=1;i<n;i++)
	{
		sum += (function(a+i*step));
	}
	sum *= step;
	return sum;
}

int main ()
{
	double result = integral(0,PI,1000);
	printf("%.6lf",result);
	return 0; 
}

