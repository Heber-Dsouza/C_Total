#include<stdio.h>

int main(){
  int a, sum = 0, i;
  printf("Digite o numero: ");
  scanf("%d", &a);
  for(i = 1; i <= a; i++){
    sum += i;
  }
  printf("A soma dos numeros ateh %d eh: %d", a, sum);
  return 0;
}

/*
  Write an algorithm to find the sum of first N natural numbers.
*/