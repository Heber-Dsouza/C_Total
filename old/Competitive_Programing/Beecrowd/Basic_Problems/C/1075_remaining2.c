#include<stdio.h>

#define result(i, n) ((i * n) + 2)
#define MAX 10000

int main(){
  int n, i;
  scanf("%d", &n);
  for(i = 0; result(i, n) < MAX; i++)
    printf("%d\n", result(i, n));
  return 0;
}

/*
  Read an integer N. Print all numbers between 1 and 10000, which divided by N will give the rest = 2.

  Input:
  The input is an integer N (N < 10000)

  Output:
  Print all numbers between 1 and 10000, which divided by n will give the rest = 2, one per line.
*/