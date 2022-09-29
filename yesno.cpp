#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin>>n;
    while(n--)
    {
        char a[3];
        for(int i=0;i<3;i++)
        {
            cin>>a[i];
        }
        if((a[0]=='Y'||a[0]=='y') && (a[1]=='E'||a[1]=='e') && (a[2]=='s'||a[2]=='S'))
        {
            cout<<"YES";
        }
        else
        cout<<"NO";

        cout<<endl;
    }
    return 0;
    
}