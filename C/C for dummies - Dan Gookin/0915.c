#include <stdio.h>

int main()
{
    float halfstep;

    halfstep = -5.0;
    while(halfstep <= 5.0)
    {
        printf("%.1f\n",halfstep);
        halfstep = halfstep + 0.5;
    }
    return(0);
}