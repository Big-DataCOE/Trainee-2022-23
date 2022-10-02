
#include<stdio.h>
int main(){
    int a,b;
    int y=0;
    scanf("%d",&a);
    scanf("%d",&b);
    while(1){
        y++;
        a=a*3;
        b=b*2;
        if(a>b){
            printf("%d",y);
            break ;
        }   
    }
    return 0;
}

