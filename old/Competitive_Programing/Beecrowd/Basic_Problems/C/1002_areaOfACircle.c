#include<stdio.h>
#include<stdlib.h>
#include<math.h>

double Calc_Circle_Area(double x, double *PI_value){
  double PI = 3.14159;
  if(PI_value == NULL)
    PI_value = &PI;
	return *PI_value * pow(x, 2);
}

int main(){
	double R;
  scanf("%lf", &R);
	printf("A=%.4lf\n", Calc_Circle_Area(R, NULL));
	return 0;
}

/*
  The formula to calculate the area of a circumference is defined as A = π . R2. Considering to this problem that π = 3.14159:
  Calculate the area using the formula given in the problem description.

  Input:
  The input contains a value of floating point (double precision), that is the variable R.

  Output:
  Present the message "A=" followed by the value of the variable, as in the example bellow, with four places after the decimal point.
  Use all double precision variables. Like all the problems, don't forget to print the end of line after the result, otherwise you will receive "Presentation Error".
*/