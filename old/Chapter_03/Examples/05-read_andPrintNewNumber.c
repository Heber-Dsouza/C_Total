#include<stdio.h>
#include<stdlib.h>
#include<math.h>

int main(){
  int i, n, *nums, number = 0;
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
      number += nums[i] * pow(10, i);
    }
    printf("The number is: %i", number);
  } else {
    printf("Erro...");
    return 1;
  }
  return 0;
}

/*
  Write a program to enter n number of digits. Form a number using these digits.
*/