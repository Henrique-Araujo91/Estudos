#include <stdio.h>

int main()
{
    float fav;

    printf("Qual o seu número favorito?\n");
    scanf("%f",&fav);
    printf("%0.2f é meu número favorito também!\n",fav);
    return(0);
}