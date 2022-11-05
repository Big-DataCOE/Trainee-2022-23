#include<stdio.h>
int main()
{
    int a,b,c=0;
    scanf("%d %d", &a, &b);
    
    if(a>b)
        c=0;
    else
        {
		  while(a<=b)
        {
            a=a*3;
            b=b*2;
            c++;
        }
        printf("%d",c);}
}
