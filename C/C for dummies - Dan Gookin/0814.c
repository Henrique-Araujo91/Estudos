#include <stdio.h>

int main()
{
    int coordinate;

    printf("Entre com o valor da coordenada: ");
    scanf("%d",&coordinate);
    if( coordinate >= -5 && coordinate <= 5 )
    {
        puts("Perto o suficiente.");
    }
    else
    {
        puts("Alvo fora do alcance.");
    }
    return(0);
}