#include<stdio.h>

int isEven(int x){
  return x % 2 == 0;
}

int main(){
  int num;
  printf("Digite o numero: ");
  scanf("%d", &num);

  printf("O numero eh %s", (isEven(num) ? "Par" : "Impar"));

  return 0;
}