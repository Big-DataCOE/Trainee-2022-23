#include<bits/stdc++.h>
using namespace std;
int main()
{
    int N,c=0;
    cin>>N;
    
        string s,d; 
        cin>>s>>d;

        for(int i=0;i<N;i++)
        {
            if(abs(s.at(i)-d.at(i))>5)
            {
            c+=10-(abs(s.at(i)-d.at(i)));
            }
            else
            {
            c+=abs(abs(s.at(i)-d.at(i)));
            }
        }
    
    cout<<c;
    return 0;
}