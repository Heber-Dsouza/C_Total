#include<stdio.h>

int calcFatorial(int x){
    if(x == 1)return 1;
    return x * calcFatorial(x - 1);
}

int main(){
  int entry;
  scanf("%d", &entry);
  printf("%d\n", calcFatorial(entry));
  return 0;
}

/*
  Read a value N. Calculate and write its corresponding factorial. Factorial of N = N * (N-1) * (N-2) * (N-3) * ... * 1.

  Input:
  The input contains an integer value N (0 < N < 13).

  Output:
  The output contains an integer value corresponding to the factorial of N.
*/