#include <stdio.h>

int main()
{
    char name[10];

    printf("Quem é você? ");
    fgets(name,10,stdin);
    printf("Prazer em lhe conhecer, %s.\n",name);
    return(0);
}