//problem code-791A
//accepted solution-


#include<iostream>
using namespace std;
int main()
{
    int a,b;
    cin>>a>>b;
    int x=0;
    while(a<=b)
    {
        a=3*a;
        b=2*b;
        ++x;
    }
    cout<<x;
    return 0;
}

