#include <stdio.h>

int main()
{
    int code;

    printf("Entre com o código do erro (1-3): ");
    scanf("%d",&code);
    switch(code)
    {
        case 1:
            puts("Culpa do Drive, não sua.");
            break;
        case 2:
            puts("Conteúdo ilegal, chame um advogado.");
            break;
        case 3:
            puts("Filename ruim, espanque-o.");
            break;
        default:
            puts("Isso não é 1, 2, ou 3");
    }
    return(0);
}