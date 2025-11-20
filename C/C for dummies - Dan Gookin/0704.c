#include <stdio.h>

int main()
{
    int a;
    int b;
    int c;

    printf("Eu estou esperando por três caractere: ");
    a = getc(stdin);
    b = getc(stdin);
    c = getc(stdin);
    printf("Eu esperei pelos '%c' '%c' e '%c' caracteres.\n",a,b,c);
    return(0);
}