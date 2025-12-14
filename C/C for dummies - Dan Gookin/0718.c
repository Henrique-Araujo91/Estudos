#include <stdio.h>

int main()
{
    char firstname[15];
    char lastname[15];

    printf("Digite seu primeiro nome: ");
    fgets(firstname,15,stdin);
    printf("Digite seu sobrenome: ");
    fgets(lastname,15,stdin);
    printf("Prazer em lhe conhecer, %s %s.\n",firstname,lastname);
    return(0);
}
