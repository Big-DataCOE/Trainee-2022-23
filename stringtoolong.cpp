#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin>>n;
    while(n--)
    {
        string s;
        int l;
        cin>>s;
        l=s.length();
        if(l>10)
        {
        cout<<s.at(0)<<l-2<<s.at(l-1);
        // can use toupper or tolower function and then compare it 
        }
        else
        cout<<s;

        cout<<endl;
    }
    return 0;
}