#include<bits/stdc++.h>
using namespace std;
int main()
{
    int L,B,t=0;
    cin>>L>>B;
    while(L<=B)
    {
        L=L*3;
        B=B*2;
        t++;
        
    }
    cout<<t;
    return 0;
}