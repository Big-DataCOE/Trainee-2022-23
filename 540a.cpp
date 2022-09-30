#include <bits/stdc++.h>

using namespace std;

#define llu long long

int main(){
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    llu n;
    cin>>n;
    llu arr[n+1]={0},arr2[n+1]={0};
    string x,y;
    cin>>x>>y;
    for(llu i=1;i<=n;i++){
        arr[i]=(llu)x[i-1]-48;
        arr2[i]=(llu)y[i-1]-48;
    }
    llu moves=0;
    for(llu i=1;i<=n;i++){
        if((abs)(arr[i]-arr2[i])>5){
            moves+=10-(abs)(arr[i]-arr2[i]);
        }
        else{
            moves+=(abs)(arr[i]-arr2[i]);
        }
    }
    cout<<moves<<endl;
    return 0;
}
