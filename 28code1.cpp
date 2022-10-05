#include<iostream>
using namespace std;
int main(){
   
        int n;
        cin>>n;
        bool f=false;
        if(n==2){
            f=false;
        }
        else{
            if(n%2==0){
                f=true;
            }
        }
        if(f==true){
            cout<<"YES"<<" ";
        }
        else{
            cout<<"NO"<<" ";
        }
    
        
}