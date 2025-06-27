#include<stdio.h>

int main(){
  int numArr[20], n, i, index = 0;
  printf("Insira o numero de elementos do array: ");
  scanf("%d", &n);
  for(i = 0; i < n; i++){
    printf("arr[%d] = ", i);
    scanf("%d", &numArr[i]);
    if(numArr[i] < numArr[index])
      index = i;
  }
  printf("The smallest element is : %d\n", numArr[index]);
  printf("The position of the smallest element in the array is : %d\n", index);
  return 0;
}

/*
  Write a program to print the position of the smallest number of n numbers using arrays.
*/