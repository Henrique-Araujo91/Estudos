#include <stdio.h>

int main()
{
    int a,b;

    a = 6;
    b = a - 2;

    if( a > b)
    {
        printf("%d é maior que %d\n",a,b);
    }
    else
    {
        printf("%d não é maior que %d\n",a,b);
    }
    return(0);
}