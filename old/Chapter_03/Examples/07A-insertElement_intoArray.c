#include<stdio.h>

#define MAX 10

int main(){
  int n, i, num, pos, nums[MAX];
  printf("Enter the number of elements of Array: ");
  if(scanf("%d", &n) && n <= MAX){
    printf("Enter the numbers to be inserted: ");
    for(i = 0; i < n; i++){
      if(!scanf("%d", &nums[i])){
        return 1;
      }
    }
    while(n < MAX){
      printf("Enter the number to be inserted: ");
      if(!scanf("%d", &num)){
        return 1;
      }
      printf("Enter the position at which the number has to be added: ");
      if(!scanf("%d", &pos) || pos > n){
        printf("Numero invalido ou posicao maior que o numero de elementos...");
        return 1;
      }
      for(i = n - 1; i >= pos; i--){
        nums[i + 1] = nums[i];
      }
      nums[pos] = num;
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
  Write a program to insert a number at a given location in an array.
*/