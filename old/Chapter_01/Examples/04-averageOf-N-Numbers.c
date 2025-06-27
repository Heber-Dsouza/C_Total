#include <stdio.h>
int main(){
  int start, end, i, j = 0;
  float average;
  scanf("%d %d", &start, &end);
  i = start;
  do{
    average += i++;
    ++j;
  } while(i <= end);
  average /= j;
  printf("The average of numbers from %d to %d = %f", start, end, average);
  return 0;
}