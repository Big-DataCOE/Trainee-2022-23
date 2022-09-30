#include <iostream>
using namespace std;

int main()
{
    int a,b,c=0;
    cin>>a>>b;
    if(a>b)
    {
       cout<<0;
    }
    else
    {
        while(a<=b)
        {
            a=3*a;
            b=2*b;
            c++;
        }
        cout<<c;
    }
    return 0;
}