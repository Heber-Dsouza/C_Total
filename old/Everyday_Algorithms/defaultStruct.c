#include<stdio.h>

#define MAX 100

// forma 1:
typedef struct {
  int arr[MAX],
  lower_bound, 
  upper_bound;
} _Array_;

_Array_ defaultArray = {{0}, 0, MAX};

// forma 2:
struct _Array2_ {
  int arr[MAX],
  lower_bound, 
  upper_bound;
} defaultArray2 = {{0}, 0, MAX};

typedef _Array2_ _Array2_;

//////////////////////////////////////////////////////////////

int insertElement(_Array_ *arr, int value){
  if(arr->lower_bound < arr->upper_bound){
    arr->arr[arr->lower_bound] = value;
    return 1;
  }
  return 0;
}

int main(){
  _Array_ newArr = defaultArray;
  insertElement(&newArr, 1);
  printf("%d", newArr.arr[0]);
  return 0;
}