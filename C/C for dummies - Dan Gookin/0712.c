#include <stdio.h>

int main() 
{
    char firstname[15];

    printf("Digite seu primeiro nome: ");
    scanf("%s",firstname);
    printf("Prazer em conhecê-lo, %s",firstname);
    return(0);    
}