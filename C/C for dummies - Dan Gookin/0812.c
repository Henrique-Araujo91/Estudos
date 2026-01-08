#include <stdio.h>

int main()
{
    const int secret = 17;
    int guess;

    printf("Você consegue adivinhar o número secreto?\n");
    scanf("%d",&guess);
    if(guess==secret)
    {
        puts("Você adivinhou ele!");
        return(0);
    }
    else
    {
        puts("Errooo!");
        return(1);
    }
}