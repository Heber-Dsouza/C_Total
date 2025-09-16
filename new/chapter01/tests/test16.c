#include <stdio.h>

int main()
{

  char myText[10];

  fgets(myText, sizeof(myText), stdin);

  printf("%s", myText);

  return 0;
}