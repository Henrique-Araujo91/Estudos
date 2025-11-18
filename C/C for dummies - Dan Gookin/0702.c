#include <stdio.h>

int main()
{
    int c;

    printf("Eu estou esperando por um caractere: ");
    c = getchar();
    printf("Eu esperei pelo '%d' caractere.\n", c);
    return(0);
}