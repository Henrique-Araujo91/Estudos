#include <stdio.h>

int main()
{
    char code;

    printf("Entre com o código do erro (1-3): ");
    scanf("%c",&code);
    switch(code)
    {
        case 'A':
            puts("Culpa do Drive, não sua.");
            break;
        case 'B':
            puts("Conteúdo ilegal, chame um advogado.");
            break;
        case 'C':
            puts("Filename ruim, espanque-o.");
            break;
        default:
            puts("Isso não é 1, 2, ou 3");
    }
    return(0);
}