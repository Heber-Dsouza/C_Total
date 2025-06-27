#include<stdio.h>
#include<stdlib.h>

int* findNearestMin(int *arr, int length, int value){
  int *min = malloc(sizeof(int)), flag = 0, assigned = 0;
  for(int i = 0; i < length; i++){
    if(arr[i] >= value ){
      flag = 1;
      if(!assigned){
        *min = arr[i];
        assigned = 1;
      } else if(assigned && arr[i] < *min)
        *min = arr[i];
    }
  }
  
  if(!flag)
    return NULL;
  else 
    return min;
}

int main(){
  int arr[] = {1, 2, 3}, *nearestMin;
  nearestMin = findNearestMin(arr, 3, 5);
  if(nearestMin != NULL){
    printf("%d", *nearestMin);
  }
  free(nearestMin);
  return 0;
}

/*
	Algoritmo para identificar o número mais próximo maior do que o valor.
*/