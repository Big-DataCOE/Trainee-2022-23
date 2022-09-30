#include<iostream>
#include<string.h>
using namespace std;
int main(){
    int i,j,v;
    string a,b;
    char c;
    cin>>j;
    for(v=0;v<j;v++){
   
    cin>>a;
     b=a;
    for(i=0;i<a.length();i++){
        
       c= toupper(b[i]);
       b[i]=c;
    }
    if(b=="YES"){
        cout<<"YES\n";
    }
    else{
        cout<<"NO\n";
    }
    }
    return 0;
}