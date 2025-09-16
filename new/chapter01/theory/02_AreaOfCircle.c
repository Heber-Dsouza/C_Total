// Write a program to calculate the area of a circle.
// Page 15

#include <stdio.h>

int main()
{
  float radius;
  double area;

  printf("Enter the radius of the circle: ");
  scanf_s("%f", &radius);

  area = 3.14 * radius * radius;
  printf(" \n Area = %.2lf", area);

  return 0;
}