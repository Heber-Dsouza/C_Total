#include <stdio.h>

int main()
{
  short int a = 1;
  long int b = 2; // %ld
  // OR long b = 2;
  long long int bb = 1; // %lld
  // OR long long bb = 1;
  char l = 'L';

  float x = 1.2;
  double y = 1.3;
  long double z = 4.0; // %Llf

  unsigned int sA = sizeof(a);
  unsigned int sB = sizeof(b);
  unsigned int sBB = sizeof(bb);
  unsigned int sL = sizeof(l);
  unsigned int sX = sizeof(x);
  unsigned int sY = sizeof(y);
  unsigned int sZ = sizeof(z);

  printf("\n");

  printf("%d", sA);
  printf("\n");

  printf("%d", sB);
  printf("\n");

  printf("%d", sBB);
  printf("\n");

  printf("%d", sL);
  printf("\n");

  printf("%d", sX);
  printf("\n");

  printf("%d", sY);
  printf("\n");

  printf("%d", sZ);
  printf("\n");

  return 0;
}