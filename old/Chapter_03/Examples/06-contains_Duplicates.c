#include<stdio.h>
#include<stdlib.h>

int main(){
  int i, j, n, *nums, flag = 1;
  printf("Enter the number of digits: ");
  if(scanf("%d", &n)){
    nums = (int*)malloc(n * sizeof(int));
    printf("Input the numbers: ");
    for(i = 0; i < n; i++){
      if(scanf("%d", &nums[i]) == 0){
        printf("Erro...");
        return 1;
      }
    }
    for(i = 0; i < n; i++){
      for(j = i + 1; j < n; j++){
        if(nums[i] == nums[j] & i != j){
          flag = 0;
          printf("\nDuplicate numbers found at locations %d and %d.", i, j);
        }
      }
    }
    if(flag)
      printf("\nNo Duplicates Found");
  } else {
    printf("Erro...");
    return 1;
  }
  return 0;
}

/*
  Write a program to find whether the array of integers contains a duplicate number.
*/