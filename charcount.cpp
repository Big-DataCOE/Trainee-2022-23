#include<iostream>
#include<string.h>
int main(){
    int a,c,i;
    char d;
    std::cin>>c;
    for(i=0;i<c;i++){
        std::string e;
        std::cin>>e;
        a=e.length();
        if(a<10){
            std::cout<< e;
        }
        else{
            std::cout<<e[0]<<(a-2)<<e[a-1]<<"\n";
        }

    
}
return 0;
}