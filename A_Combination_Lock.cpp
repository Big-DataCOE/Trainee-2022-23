#include<bits/stdc++.h>
using namespace std;
int main(){
    int n,count=0,a,b;
    cin >> n;
    string str1,str2;
    cin >> str1 >> str2;
    for(int i=0;i<n;i++){
        a=abs(str1[i]-str2[i]);
        b=abs(10-abs(str1[i]-str2[i]));
        count+=min(a,b);
    }
    cout << count << endl;
}