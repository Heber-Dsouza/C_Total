#include <stdio.h>

#define handleComparator(i, n) (i < (n / 2) + (n % 2 == 0 ? 0 : 1))
#define handlePrint(i) (1 + (i * 2))

int main(){
    int n, i;
    scanf("%d", &n);
    for(i = 0; handleComparator(i, n); i++)
        printf("%d\n", handlePrint(i));
    return 0;
}

/*
  Read an integer value X (1 <= X <= 1000).  Then print the odd numbers from 1 to X, each one in a line, including X if is the case.

  Input:
  The input will be an integer value.

  Output:
  Print all odd values between 1 and X, including X if is the case.
*/