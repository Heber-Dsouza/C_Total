#include<stdio.h>

int main(){
  int i, num, flag = 0;
  printf("Digite o numero: ");
  scanf("%d", &num);
  for(i = 2; i < num / 2; i++){
    if(num % i == 0){
      flag = 1;
      break;
    }
  }
  printf("O numero %d eh %s", num, flag ? "composto" : "primo");
  return 0;
}