#include<stdio.h>
int main(){
    int n,x=0,i;
    char s[4];
    scanf("%d",&n);
    for(i=0;i<n;i++)
    {
        scanf("%s",s);
        if(s[1]=='x')
        x++;
        else
        x--;
    }
    printf("%d",x);
    return 0;

}