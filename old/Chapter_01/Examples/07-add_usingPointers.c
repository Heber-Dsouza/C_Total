#include<stdio.h>

void Add(int x, int y, int *sum){
  *sum = x + y;
}

int main(){
  int a, b, sum = 0;
  printf("Digite o valor do primeiro numero: ");
  scanf("%d", &a);
  printf("Digite o valor do segundo numero: ");
  scanf("%d", &b);
  printf("Soma = %d", (Add(a, b, &sum), sum));
  return 0;
}