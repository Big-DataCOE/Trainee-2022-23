#include <iostream>
using namespace std;

int main(){
    int t;
    cin>>t;
    while(t--){
        string a;
        cin>>a;
        
        if(a[0]!='Y'&&a[0]!='y'){
            cout<<"NO"<<endl;
            
        }
        else if(a[1]!='E'&&a[1]!='e'){
            cout<<"NO"<<endl;
            
        }
        else if (a[2]!='S'&&a[2]!='s'){
            cout<<"NO"<<endl;
            
        }
        else{
            cout<<"YES"<<endl;
        }
    }
}