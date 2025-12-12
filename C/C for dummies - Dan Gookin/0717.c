#include <stdio.h>

int main()
{
    const int size = 3;
    char name[size];

    printf("Quem é você? ");
    fgets(name,size,stdin);
    printf("Prazer em lhe conhecer, %s.\n",name);
    return(0);
}