#include<stdio.h>
#define MAX 2

int handlePutsZero(int *num){

}

int main(){
  int i, j, looping = 1, nums[MAX], *bgn, *end;
  printf("Digite os dez numeros: ");
  for(i = 0; i < MAX; i++)
    if(!scanf("%d", &nums[i])){
      printf("Entrada invalida...");
      return 1;
    }
  for(j = 0;;){
    bgn = nums, end = nums + MAX, i = 0;
    for(;bgn < end; bgn++){
      if(*bgn > 0)
        (*bgn)--;
      else if(*bgn < 0)
        (*bgn)++;
      else
        i++;
    }
    if(i == MAX)
      break;
    j++;
  }

  for(i = 0; i < MAX; i++){
    printf("%d ", nums[i]);
  }
  printf("\nNumero de itineracoes: %d", j);
  
  return 0;
}

/*
  1. Utilizando ponteiros, construa um programa que lê um vetor com 10
  números inteiros. Decremente o valor de cada elemento
  positivo do vetor, e incremente cada elemento negativo. Faça isso até que
  todos os números do vetor sejam 0 e imprima quantas iterações foram
  necessárias para zerá-los.
*/