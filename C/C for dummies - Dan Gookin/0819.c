#include <stdio.h>

int main()
{
    char choice;

    puts("Planos de refeição:");
    puts("A - Café da manha, almoço e jantar");
    puts("B - Apenas almoço e jantar");
    puts("C - Apenas jantar");
    printf("Sua escolha? (A, B ou C)\n");
    printf("Escolha: ");
    scanf("%c",&choice);

    printf("Você escolheu ");
    switch(choice)
    {
        case 'A':
            printf("Café da manhã, ");
        case 'B':
            printf("Almoço e ");
        case 'C':
            printf("Jantar ");
        default:
            printf("Como seu plano de refeição.\n");
    }
    return(0);
}