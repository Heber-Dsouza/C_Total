#include<stdio.h>

#define MAX 6

int main(){
  int n, i;
  scanf("%d", &n);
  for(i = 0; i < MAX; i++)
    printf("%d\n", n + (i * 2) + (n % 2 == 0 ? 1 : 0)); // *a
  return 0;
}

// a: 0 para obter apartir do número ímpar ou 2 para obter apartir do próximo número ímpar

/*
  Read an integer value X and print the 6 consecutive odd numbers from X, a value per line, including X if it is the case.

  Input:
  The input will be a positive integer value.

  Output:
  The output will be a sequence of six odd numbers.
*/