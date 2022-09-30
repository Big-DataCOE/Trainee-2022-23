#include<iostream>
#include<string>
using namespace std;
int main(){
    int a,i,plus=0,minus=0;
    int n; cin>>n;
    for(i=0;i<n;i++){
        string s;
        cin>>s;
        if(s=="X++"||s=="++X")
        plus++;
        else if(s=="X--"||s=="--X")
        minus++;
       
    }
    cout<<(plus-minus);
    return 0;
}