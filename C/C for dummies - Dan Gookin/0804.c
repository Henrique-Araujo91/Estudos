#include <stdio.h>

int main()
{
    int first,second;

    printf("Entre com o primeiro valor: ");
    scanf("%d",&first);
    printf("Entre com o segundo valor: ");
    scanf("%d",&second);

    puts("Avaliando...");
    if(first<second)
    {
        printf("%d é menor que %d\n",first,second);
    }
    if(first>second)
    {
        printf("%d é maior que %d\n",first,second);
    }
    return(0);
}