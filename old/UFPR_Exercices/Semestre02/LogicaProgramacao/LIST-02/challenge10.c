#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    int errorHandle = 0;
    double a, b, c, x1, x2, delta;
    
    printf("Digite o valor de a: ");
    errorHandle += scanf("%lf", &a);
    printf("Digite o valor de b: ");
    errorHandle += scanf("%lf", &b);
    printf("Digite o valor de c: ");
    errorHandle += scanf("%lf", &c);
    
    if(errorHandle == 3){
        delta = pow(b, 2) - 4 * a * c;
        if(delta >= 0.0 && a != 0.0){
            x1 = (-b + sqrt(delta)) / (2 * a);
            x2 = (-b - sqrt(delta)) / (2 * a);
        }
        
        printf("x1 = %lf e x2 = %lf", x1, x2);
    } else {
        printf("Numeros invalidos...");
    }
    return 0;
}

/*
  10. Dados três números reais, elabore um programa capaz de encontrar as raízes de uma
  equação quadrática usando a fórmula de Bhaskara.
*/