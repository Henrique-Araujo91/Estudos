#include <stdio.h>

int main()
{
    const int v = 3;

    printf("O valor é %d\n",v);
    printf("E %d é o valor.\n",v);
    printf("Não é %d\n",v+1);
    printf("E não é %d\n",v-1);
    printf("Não, o valor é %d\n",v);
    return(0);
}