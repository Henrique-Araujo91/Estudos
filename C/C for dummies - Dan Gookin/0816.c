#include <stdio.h>

int main()
{
    char yorn;

    printf("Você quer continuar? (Y/N) ");
    scanf("%c",&yorn);
    if( yorn == 'Y' || yorn == 'y' )
    {
        puts("Continuando...");
    }
    else if( yorn == 'N' || yorn == 'n' )
    {
        puts("Agora parando...w.");
    }
    else
    {
        puts("Você não digitou Y ou N!");
    }
    return(0);
}