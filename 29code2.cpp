#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin>>t;
    while(t--)
    {
        string s;
        cin>>s;
       if((s.substr(0,1)=="y" || s.substr(0,1)=="Y") && (s.substr(1,1)=="e" || s.substr(1,1)=="E") && (s.substr(2,1)=="s" || s.substr(2,1)=="S")){
        cout<<"YES"<<endl;
       }
       else{
        cout<<"NO"<<endl;
       }
    }
}