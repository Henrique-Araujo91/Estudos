#include <stdio.h>

int main()
{
    int c;

    printf("Eu estou esperando por um caractere: ");
    c = getc(stdin);
    printf("Eu esperei pelo '%c' caractere.\n", c);
    return(0);
}