#include <stdio.h>

int main()
{
    int first,second;

    printf("Coloque o primeiro valor: ");
    scanf("%d",&first);
    printf("Coloque o segundo valor: ");
    scanf("%d",&second);

    puts("Avaliando...");
    if(first<second)
    {
        printf("%d é menor que %d\n",first,second);
    }
    else if(first>second)
    {
        printf("%d é maior que %d\n",first,second);
    }
    else
    {
        printf("%d é igual a %d\n",first,second);
    }
    return(0);
}