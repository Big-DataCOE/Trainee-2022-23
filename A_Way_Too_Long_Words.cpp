#include<bits/stdc++.h>
using namespace std;
int main(){
    int t;
    cin >> t;
    while(t--){
        string str,temp;
        cin >> str;
        if(str.size()>10){
        temp=str[0];
        temp+=to_string(str.size()-2);
        temp+=str[str.size()-1];
        cout << temp << endl;}
        else
        cout << str << endl;
    }
}