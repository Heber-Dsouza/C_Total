#include <stdio.h>

int SelectOption(int* state, int* currentState, int* isRunning){
    int handleContinue = 1;
    printf("\e[1;1H\e[2J");
    switch(*state){
        case 1: 
          printf("\nProdução de lingotes:\n\n");
          printf("Processo de fabricação de lingotes de silício, que são a base para a produção de chips de silício.\n\n");
          break;
        case 2: 
          printf("\nProdução de bolachas de silício monocristalino:\n\n");
          printf("Fabricação de discos finos de silício monocristalino usados como substratos para a fabricação de dispositivos eletrônicos.\n\n");
          break;
        case 3: 
          printf("\nCriação de camadas para isolamento:\n\n");
          printf("Processo de aplicação de camadas isolantes para separar componentes elétricos em dispositivos microeletrônicos.\n\n");
          break;
        case 4: 
          printf("\nImplantação de íons:\n\n");
          printf("Técnica que envolve a introdução controlada de íons em um material, muitas vezes utilizada na dopagem de semicondutores.\n\n");
          break;
        case 5: 
          printf("\nCrescimento de óxido de silício:\n\n");
          printf("Cultivo de camadas finas de óxido de silício, frequentemente usado como isolante em dispositivos eletrônicos.\n\n");
          break;
        case 6: 
          printf("\nDeposição de materiais condutores:\n\n");
          printf("Processo de depositar camadas de materiais condutores, como metais, em dispositivos microeletrônicos.\n\n");
          break;
        case 7: 
          printf("\nLitografia:\n\n");
          printf("Técnica usada para transferir padrões de um máscara para um substrato, essencial na fabricação de circuitos integrados.\n\n");
          break;
        case 8: 
          printf("\nGravação:\n\n");
          printf("Processo de remoção de material indesejado de um substrato, usado para definir padrões em dispositivos microeletrônicos.\n\n");
          break;
        case 9: 
          printf("\nCriação de regiões de fonte e dreno para MOSFET (dopagem p):\n\n");
          printf("O processo de dopagem com íons p para criar as regiões de fonte e dreno em transistores MOSFET.\n\n");
          break;
        case 10: 
          printf("\nLigação:\n\n");
          printf("Etapa onde os componentes eletrônicos são conectados aos seus respectivos contatos, permitindo a interconexão em circuitos eletrônicos.\n\n");
          break;
        case 0: 
          printf("Good bye!");
          *isRunning = 0;
          handleContinue = 0;
          break;
        default:
         *currentState = 0;
          break;
    }
    
    if(handleContinue){
        printf("Aperte ENTER para voltar: ");
        while (getchar() != '\n');
        if(getchar() == '\n'){
            printf("\e[1;1H\e[2J");
            *currentState = 0;
        }
    }
}

int MainMenu(int* state){
  int selected, flag = 0;
  printf("\n## Processos de fabricação de microprocessadores ## \n\n  [1]:  Produção de lingotes\n  [2]:  Produção de bolachas de silício monocristalino\n  [3]:  Criação de camadas para isolamento \n  [4]:  Implantação de íons\n  [5]:  Crescimento de óxido de silício \n  [6]:  Deposição de materiais condutores\n  [7]:  Litografia\n  [8]:  Gravação\n  [9]:  Criação de regiões de fonte e dreno para MOSFET (dopagem p)\n  [10]: Ligação\n\n  [0]:  sair\n");
  printf("\n Digite uma das opções acima para navegar no programa: ");
  if(scanf("%d", &selected) && selected >= 0 && selected < 11){
    *state = selected;
    return 1;
  } else {
    printf("\e[1;1H\e[2J");
    while (getchar() != '\n');
    printf("Entrada invalida, tente novamente...\n");
    return 0;
  }
}

int main(){
    int currentState = 0, isRunning = 1, isInputValid = 0;
      while(isRunning){
        if(currentState == 0){
          isInputValid = MainMenu(&currentState);
        }
        if(isInputValid){
          SelectOption(&currentState, &currentState, &isRunning);
        }
      }

    return 0;
}

    
/*
	01. Criar um programa que apresente um menu contendo 10 opções na tela, dentre as quais, o
	usuário pode digitar o número de uma delas e visualizar o texto descrevendo aquela opção
	escolhida. As 10 opções devem ser referentes aos processos de fabricação de
	microprocessadores ilustrados pelo video da Infineon trabalhado em sala de aula e disponível no
	UFPR Virtual, módulo 01. A décima primeiro opção deve ser para sair e finalizar o programa.
	Exemplo:

    01: Produção de lingotes
    02: Produção de bolachas de silício monocristalino 
    03: Criação de camadas para isolamento 
    04: Implantação de íons 
    05: Crescimento de óxido de silício 
    06: Deposição de materiais condutores 
    07: Litografia 
    08: Gravação 
    09: Criação de regiões de fonte e dreno para MOSFET (dopagem p) 
    10: Ligação
*/


