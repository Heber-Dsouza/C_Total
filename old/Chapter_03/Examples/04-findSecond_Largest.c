#include<stdio.h>

int main(){
  int numArr[20], n, i, largest = 0, secondLargest = 0;
  printf("Insira o numero de elementos do array: ");
  scanf("%d", &n);
  for(i = 0; i < n; i++){
    printf("arr[%d] = ", i);
    scanf("%d", &numArr[i]);
    if(numArr[i] >= numArr[largest]){
      largest = i;
    }
    if(numArr[i] >= numArr[secondLargest] && i != largest){
      secondLargest = i;
    }
  }
  printf("The second largest element is : %d\n", numArr[secondLargest]);
  printf("The position of the second largest element in the array is : %d\n", secondLargest);
  return 0;
}

/*
  Write a program to find the second largest of n numbers using an array.
*/