#include<stdio.h>

void Swap(int *a, int *b){
  int temp = *a;
  *a = *b;
  *b = temp;
}

int main(){
  int a, b;
  printf("Digite o valor de A: ");
  scanf("%d", &a);
  printf("Digite o valor de B: ");
  scanf("%d", &b);
  printf("O valor atual de A = %d e o valor atual de B = %d\n", a, b);
  Swap(&a, &b);
  printf("Trocando...\n");
  printf("O valor atual de A = %d e o valor atual de B = %d\n", a, b);
  return 0;
}

/*
  Write an algorithm for swapping two values.
*/