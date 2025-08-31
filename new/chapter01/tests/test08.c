#include <stdio.h>

int main()
{
  int a = 4, b = 2, x = 0;

  x = (++a, b += a);
  printf("%d", x); // 7
  printf("\n");
  printf("%d", a); // 5?
  printf("\n");
  printf("%d", b); // 7?

  return 0;
}