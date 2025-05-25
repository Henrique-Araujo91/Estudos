#include <stdio.h>

#define VALUE 3
int main()
{
    printf("O valor é  %d.\n",VALUE);
    printf("E %d é o valor.\n",VALUE);
    printf("Não é %d.\n",VALUE+1);
    printf("E não é %d.\n",VALUE-1);
    printf("Não, o valor é %d.\n",VALUE);
    return(0);
}