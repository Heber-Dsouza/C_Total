#include<stdio.h>

void swap(int *n, int *m){
  if(*n > *m){
    int temp = *n;
    *n = *m;
    *m = temp;
  }
}

int main(){
  int n, m;
  scanf("%d %d", &n, &m);
  swap(&n, &m);
  for(n++; n < m; n++)
    if(n % 5 == 2 || n % 5 == 3)
      printf("%d\n", n);
  return 0;
}

/*
  Write a program that reads two integer numbers X and Y. Print all numbers between X and Y which dividing it by 5 the rest is equal to 2 or equal to 3.

  Input:
  The input file contains 2 any positive integers, not necessarily in ascending order.

  Output:
  Print all numbers according to above description, always in ascending order.
*/