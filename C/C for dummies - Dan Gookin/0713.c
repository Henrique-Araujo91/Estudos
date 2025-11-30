#include <stdio.h>

int main() 
{
    char firstname[15];
    char lastname[15];

    printf("Digite seu primeiro nome: ");
    scanf("%s",firstname);
    printf("Agora, digite seu sobrenome: ");
    scanf("%s",lastname);
    printf("Prazer em conhecê-lo, %s %s.\n",firstname,lastname);
    return(0);    
}