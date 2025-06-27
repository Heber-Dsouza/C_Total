#include<stdio.h>

#define P1 2
#define P2 3 
#define P3 5
#define calcAverage(a, b, c) (((a * P1) + (b * P2) + (c * P3)) / (P1 + P2 + P3))

int main(){
  double a, b, c;
  scanf("%lf %lf %lf", &a, &b, &c);
  printf("MEDIA = %.1lf\n", calcAverage(a, b, c));
  return 0;
}

/*
  Read three values (variables A, B and C), which are the three student's grades.
  Then, calculate the average, considering that grade A has weight 2, grade B has weight 3 and the grade C has weight 5.
  Consider that each grade can go from 0 to 10.0, always with one decimal place.

  Input:
  The input file contains 3 values of floating points (double) with one digit after the decimal point.

  Output:
  Print the message "MEDIA"(average in Portuguese) and the student's average according to the following example, with a blank space before and after the equal signal.
*/