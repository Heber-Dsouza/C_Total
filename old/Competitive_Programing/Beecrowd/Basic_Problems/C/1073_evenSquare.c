#include<stdio.h>

#define Square(n) (n * n) 

int main(){
  int n, i;
  scanf("%d", &n);
  for(i = 1; i <= n / 2; i++)
    printf("%d^2 = %d\n", i * 2, Square(i * 2));
  return 0;
}

/*
  Read an integer N. Print the square of each one of the even values from 1 to N including N if it is the case.

  Input:
  The input contains an integer N (5 < N < 2000).

  Output:
  Print the square of each one of the even values from 1 to N, as the given example.
  Be carefull! Some language automaticly print 1e+006 instead 1000000. Please configure your program to print the correct format setting the output precision.
*/