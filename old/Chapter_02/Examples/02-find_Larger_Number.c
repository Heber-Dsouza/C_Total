#include<stdio.h>

int main(){
  int a, b;
  printf("Digite o numero A: ");
  scanf("%d", &a);
  printf("Digite o numero B: ");
  scanf("%d", &b);
  if(a > b){
    printf("%d", a);
  } else if(a < b){
    printf("%d", b);
  } else {
    printf("O numeros sao iguais.");
  }
  return 0;
}

/*
  Write an algorithm to find the larger of two numbers.
*/