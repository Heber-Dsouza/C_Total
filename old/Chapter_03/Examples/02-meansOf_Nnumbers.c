#include<stdio.h>

int main(){
  int numArr[20], n, i, sum = 0;
  printf("Insira o numero de elementos do array: ");
  scanf("%d", &n);
  for(i = 0; i < n; i++){
    printf("arr[%d] = ", i);
    scanf("%d", &numArr[i]);
  }
  for(i = 0; i < n; i++){
    sum += numArr[i];
  }
  float mean = (float)sum / n;
  printf("Media = %.2f", mean);
  return 0;
}

/*
  Write a program to find the mean of n numbers using arrays.
*/