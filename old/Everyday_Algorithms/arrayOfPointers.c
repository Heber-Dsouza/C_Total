#include<stdio.h>
#include<stdlib.h>

#define MAX 3

int main(){
  int **newArray = (int**)malloc(MAX * sizeof(int*)); // or int **newArray, newArray = (int**)malloc(MAX * sizeof(int*));
  newArray[0] = (int*)1;
  newArray[1] = NULL;
  newArray[2] = (int*)3;
  for(int i = 0; i < MAX; i++){
    if(newArray[i] != NULL){
      printf("%d\n", newArray[i]);
    }
  }
  free(newArray);
  return 0;
}