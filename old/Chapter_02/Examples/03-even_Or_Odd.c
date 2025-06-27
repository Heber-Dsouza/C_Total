#include<stdio.h>

int isEven(int x){
  return x % 2 == 0;
}

int main(){
  int a;
  printf("Digite o numero: ");
  scanf("%d", &a);
  printf("O numero %d %s eh par", a, (isEven(a) ? "\b" : "nao"));
  return 0;
}

/*
  Write an algorithm to find whether a number is even or odd.
*/