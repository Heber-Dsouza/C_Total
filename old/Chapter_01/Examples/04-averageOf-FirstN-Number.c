#include <stdio.h>
int main(){
  int end, sum, j;
  float average;
  scanf("%d", &end);
  do{
    sum += j++;
  } while(j <= end);
  average = (float)sum / j;
  printf("The sum of first %d numbers = %d\n", end, sum);
  printf("The average of first %d numbers = %f\n", end, average);
  return 0;
}