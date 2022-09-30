#include <bits/stdc++.h>

using namespace std;

#define llu long long

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    llu t;
    cin>>t;
    while(t--){
        string s;
        cin>>s;
        llu var=0;
        if(s[0]=='y' || s[0]=='Y'){
            var++;
        }
        if(s[1]=='e' || s[1]=='E'){
            var++;
        }
        if(s[2]=='s' || s[2]=='S'){
            var++;
        }
        if(var==3){
            cout<<"YES"<<endl;
        }
        else{
            cout<<"NO"<<endl;
        }
    }
    return 0;
}
