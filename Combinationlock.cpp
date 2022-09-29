#include <iostream>
 
using namespace std;
 
int main(){
    int n,m,sum=0;
    cin>>n;
    string a,b;
    cin>>a>>b;
    for(int i=0; i<n; i++){
         m=abs(a[i]-b[i]);
        if(m>5){
            sum+=10-m;
        }
        else{
            sum+=m;
        }
    }
    cout<<sum;
    
}