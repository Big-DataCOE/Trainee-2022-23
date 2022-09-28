#include<iostream>
#include<string>
using namespace std;
int main(){
    int a,i,plus=0,minus=0;
    string b;
    cin>>a;
    for(i=0;i<a;i++){
        scanf("%s",&b);
        if(b=="a++"||b=="++a")
        plus++;
        else if(b=="a--"||b=="--a")
        minus++;
        
    }
    cout<<(plus-minus);
    return 0;
}