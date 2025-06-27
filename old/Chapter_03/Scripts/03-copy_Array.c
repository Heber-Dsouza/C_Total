#include<stdio.h>

void copyArr(int* arr1, int* arr2, int length){
  for(int i = 0; i < length; i++){
      arr2[i] = arr1[i];
    }
}

int main(){
  int arr1[] = {1, 2, 3, 4, 5}, arr2[5];
  copyArr(arr1, arr2, 5);
  for(int i = 0; i < 5; i++){
    printf("%d\n", arr2[i]);
  }
  return 0;
}

// Code to copy an array at the individual element level