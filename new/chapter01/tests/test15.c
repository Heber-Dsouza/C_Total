#include <stdio.h>

int main()
{
  char myText[128];

  scanf_s("%[^\n]s", &myText);

  printf("%s", myText);
  return 0;
}