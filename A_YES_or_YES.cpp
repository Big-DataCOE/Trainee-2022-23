#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin >> t;
    while(t--){
        string str;
        cin >> str;
        int n=3;
        while(n){
        str[n-1]=toupper(str[n-1]);
        n--;
        }
        if(str=="YES")
        cout << "YES" << endl;
        else
        cout << "NO" << endl;
    }
    return 0;
}