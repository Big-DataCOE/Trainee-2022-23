#include <iostream>
#include <string>
 
using namespace std;
 
int main(){
    int t;
    cin>>t;
    while(t--){
    string a;
    cin>>a;
    int m=a.length();
    if(m>10){
    cout<<a[0]<<m-2<<a[m-1]<<endl;
    }
    else{
        cout<<a<<endl;
    }
    }
}