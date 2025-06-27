#include<stdio.h>
#include<stdlib.h>

int main(){
  int m, n, i, *mArr, *nArr;
  while(scanf("%d %d", &m, &n) && (m != 0 && n != 0)){
    mArr = malloc(m * sizeof(int));
    nArr = malloc(n * sizeof(int));
    for(i = 0; i < m; i++){
      scanf("%d", &mArr[i]);
    }
    for(i = 0; i < n; i++){
      scanf("%d", &nArr[i]);
    }
    free(mArr);
    free(nArr);
  }
  return 0;
}

/*
  Código usado para simular testes, onde se passa números para arrays. Teste finaliza ao passar 0 0;
*/