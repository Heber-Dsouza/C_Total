#include <stdio.h>

int main()
{

  char myText[100];
  printf("Digite o seu texto: ");
  scanf_s("%[^a]{0,1}s", &myText);

  printf("\n%s", myText);

  return 0;
}