#include<stdio.h>

int main(){
  int x, storage[50], count = 0;
  while(scanf("%d", &x) && x != -1){
    storage[count] = x;
    count++;
  }
  for(int i = 0; i < count; i++){
    printf("%d\n", storage[i]);
  }
  return 0;
}

/*
  Escreva um algoritmo que leia valores (máximo 50) até que o usuário digite -1. Imprima esses valores.
*/