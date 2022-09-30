#include<iostream>
#include <bits/stdc++.h>
#include<string.h>
using namespace std;
int main(){
    int a,c,i;
    char d;
    std::cin>>c;
    for(i=0;i<c;i++){
        std::string e;
        std::cin>>e;
        a=e.length();
        if(a<=10){
            std::cout<<e<<endl;
        }
        else{
            std::cout<<e[0]<<(a-2)<<e[a-1]<<"\n";
        }

    
}
return 0;
}