#include <stdio.h>

int main()
{
    char choice;

    puts("Planos de refeição: ");
    puts("A - Café da manhã, almoço e jantar");
    puts("B - Apenas almoço e jantar");
    puts("C - Apenas jantar");
    printf("Sua escolha: ");
    scanf("%c",&choice);

    printf("Você escolheu por ");
    switch(choice)
    {
        case 'A':
        case 'a':
            printf("Café da manhã, ");
        case 'B':
        case 'b':
            printf("Almoço e ");
        case 'C':
        case 'c':
            printf("Jantar ");
        default:
            printf("como seu plano de refeição.\n");
    }
    return(0);
}