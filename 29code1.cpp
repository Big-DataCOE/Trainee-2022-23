#include<iostream>
#include<string>
using namespace std;
int ab(int n){
    if(n<0){
        return(-1*n);
    }
    return n;
}
int low(int n,int k){
    if(n>=k){
        return k;
    }
    return n;
}
int count(int n,int k){
    int num1=ab(n-k);
    int c=0,s=low(n,k);
    int g;
    int l=9;
    if(s==n){
        g=k;
    }
    else{
        g=n;
    }
    while(true){
        s--;
        c++;
        if(s==0){
            break;
        }
    }
    if(s==0){
        while(l>g){
            l--;
            c++;
        }
    }
    if(c>=num1){
        return num1;
    }
    return c;
}
int main(){
    string s1,s2;
    int n;
    cin>>n;
    cin>>s1>>s2;
    int c=0;
    for(int i=0;i<n;i++){
        int c1=count(stoi(s1.substr(i,1)),stoi(s2.substr(i,1)));
        c=c+c1;
    }
    cout<<c;
}