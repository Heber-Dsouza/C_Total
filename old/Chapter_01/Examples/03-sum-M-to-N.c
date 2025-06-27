#include <stdio.h>
int main(){
  int start, end, sum, i;
  scanf("%d %d", &start, &end);
  i = start;
  while(i <= end){
    sum += i++;
  }
  printf("The sum of numbers from %d to %d = %d", start, end, sum);
  return 0;
}