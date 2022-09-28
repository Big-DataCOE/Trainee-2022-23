// Problem 71A Way Too Long Words


#include <bits/stdc++.h>
using namespace std;


int main() {
	int t;
    cin>>t;
    while(t--)
    {    
        char s[100];
        cin>>s;
        int l=strlen(s);
        if(l<=10){
            cout<<s<<endl;
        }
        else cout<<s[0]<<l-2<<s[l-1]<<endl;
    }
	return 0;
}

