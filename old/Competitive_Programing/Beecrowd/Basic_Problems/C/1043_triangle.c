#include<stdio.h>

#define _perimetro(a, b, c) (a + b + c)
#define _area(a, b, c) (((a + b) * c ) / 2)

int isTriangle(float a, float b, float c){
  return ((a + b) > c) && ((a + c) > b) && ((b + c) > a);
}

int main(){
  float a, b, c;
  scanf("%f %f %f", &a, &b, &c);
  if(isTriangle(a, b, c))
    printf("Perimetro = %.1f\n", _perimetro(a, b, c));
  else
    printf("Area = %.1f\n", _area(a, b, c));
  return 0;
}

/*
  Read three point floating values (A, B and C) and verify if is possible to make a triangle with them. If it is possible, calculate the perimeter of the triangle and print the message:
    Perimetro = XX.X

  If it is not possible, calculate the area of the trapezium which basis A and B and C as height, and print the message:
    Area = XX.X

  Input:
  The input file has tree floating point numbers.

  Output:
  Print the result with one digit after the decimal point.
*/