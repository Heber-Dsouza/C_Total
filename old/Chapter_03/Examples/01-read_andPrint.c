#include<stdio.h>

int main(){
  int numArr[20], n, i;
  printf("Insira o numero de elementos do array: ");
  scanf("%d", &n);
  for(i = 0; i < n; i++){
    printf("arr[%d] = ", i);
    scanf("%d", &numArr[i]);
  }
  for(i = 0; i < n; i++){
    printf("\t -> %d\n", numArr[i]);
  }
  return 0;
}

/*
  Write a program to read and display n numbers using an array.
*/