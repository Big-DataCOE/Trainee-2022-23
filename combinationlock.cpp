#include<iostream>
using namespace std;
int main(){
    int a,d,e,i=0,f=0;
    char b[1001],c[1001];
    cin>>a;
    cin>>b;
    cin>>c;
    while(a){
        d=abs(b[i]-c[i]);
        e=b[i]+c[i];
        if(e>10)
        e=e-10;
        if(d<=e){
            f=f+d;
        }
        else{
            f=f+e;
        }
        a--;
        i++;
        cout<<f;
    }
    cout<<f;
    return 0;
}