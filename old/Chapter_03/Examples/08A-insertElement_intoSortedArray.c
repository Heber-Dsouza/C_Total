#include<stdio.h>

#define MAX 10

void swapNums(int *a, int *b){
  int temp = *a;
  *a = *b;
  *b = temp;
}

int main(){
  int n, i, j, num, nums[MAX];
  printf("Enter the number of elements of Array: ");
  if(scanf("%d", &n) && n <= MAX){
    printf("Enter the numbers to be inserted: ");
    for(i = 0; i < n; i++){
      if(!scanf("%d", &nums[i])){
        return 1;
      }
      // uma ordenação é feita no array a medida que os números são digitados.
      for(j = i; j > 0; j--){
        if(nums[j - 1] > nums[j])
          swapNums(&nums[j - 1], &nums[j]);
        else 
          break;
      }
    }
    while(n < MAX){
      printf("Enter the number to be inserted: ");
      if(!scanf("%d", &num)){
        return 1;
      }
      // encontrar a posição
      for(i = 0; i < n; i++){
        if(nums[i] > num){
          for(j = n - 1; j >= i; j--){
            nums[j + 1] = nums[j];
          }
          nums[i] = num;
          break;
        } else 
          nums[n] = num;
      }
      n++;
      printf("The array after insertion is: \n");
      for(i = 0; i < n; i++){
        printf("%d\n", nums[i]);
      }
    }
  } else {
    printf("Entrada inválida ou máximo de elementos (%d) atingido...", MAX);
    return 1;
  }
  return 0;
}

/*
  Write a program to insert a number in an array that is already sorted in ascending order.
*/