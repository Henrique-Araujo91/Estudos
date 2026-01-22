#include <stdio.h>

int main()
{
    int a,b;

    printf("Entre com um valor A: ");
    scanf("%d",&a);
    printf("Entre com um valor diferente B: ");
    scanf("%d",&b);

    if( a > b )
        printf("O valor %d é maior.\n",a);
    else
        printf("O valor %d é maior.\n",b);
    return(0);
}