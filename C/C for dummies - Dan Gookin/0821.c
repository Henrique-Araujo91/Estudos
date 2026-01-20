#include <stdio.h>

int main()
{
    int a,b,larger;

    printf("Entre com um valor A: ");
    scanf("%d",&a);
    printf("Entre com um valor diferente B: ");
    scanf("%d",&b);

    larger = (a > b) ? a : b;
    printf("Valor %d é maior.\n",larger);
    return(0);
}
