#include<stdio.h>

#define MAX 6

int main(){
  float values[MAX];
  int i, count = 0;
  for(i = 0; i < MAX; i++){
    scanf("%f", &values[i]);
    if(values[i] > 0)
      count++;
  }
  printf("%d valores positivos\n", count);
  return 0;
}

/*
  Write a program that reads 6 numbers. These numbers will only be positive or negative (disregard null values). Print the total number of positive numbers.

  Input:
  Six numbers, positive and/or negative.

  Output:
  Print a message with the total number of positive numbers.
*/