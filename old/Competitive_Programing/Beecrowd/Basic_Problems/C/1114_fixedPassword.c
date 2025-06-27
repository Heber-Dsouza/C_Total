#include<stdio.h>

int main(){
  const int validPassword = 2002, entry;
  while(scanf("%d", &entry) && entry != validPassword)
    printf("Senha Invalida\n");
  printf("Acesso Permitido\n");
  return 0;
}

/*
  Write a program that keep reading a password until it is valid.
  For each wrong password read, write the message "Senha inválida".
  When the password is typed correctly print the message "Acesso Permitido" and finished the program. The correct password is the number 2002.

  Input:
  The input file contains several tests cases. Each test case contains only an integer number.

  Output:
  For each number read print a message corresponding to the description of the problem.
*/