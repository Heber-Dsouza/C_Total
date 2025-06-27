#include<stdio.h>

#define MAX 6

int main(){
  int n, i;
  scanf("%d", &n);
  for(i = 0; i < MAX; i++)
    printf("%d\n", n + (i * 2) + 1);
  return 0;
}

// ?