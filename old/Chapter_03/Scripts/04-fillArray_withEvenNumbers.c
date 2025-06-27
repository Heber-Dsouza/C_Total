#include<stdio.h>

int main(){
  int arr[10];
  for(int i = 0; i < 10; i++){
    arr[i] = i * 2;
  }
  for(int i = 0; i < 10; i++){
    printf("arr[%d] = %d\n", i, arr[i]);
  }
  return 0;
}

// Code for filling an array with even numbers