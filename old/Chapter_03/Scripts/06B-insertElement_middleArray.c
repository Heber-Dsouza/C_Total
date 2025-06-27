#include<stdio.h>

int main(){
  int arr[10] = {1, 2, 3, 4, 5}, n = 5, num = 0, pos = 3, i;
  for(i = n; i > pos; i--){
    arr[i] = arr[i - 1];
  }
  n++;
  arr[pos] = num;
  for(i = 0; i < n; i++){
    printf("%d\n", arr[i]);
  }
  return 0;
}

/*
  Algorithm to insert an element in the middle
  of an array.

  arr, the array in which the element has to be inserted.
  n, the number of elements in the array.
  num, the value that has to be inserted.
  pos, the position at which the element has to be inserted.
*/