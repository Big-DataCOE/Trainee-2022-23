#include<iostream>
using namespace std;

void words(string str)
{
    int n=str.size();
    if(n>10)
    {
    cout<<str[0]<<n-2<<str[n-1]<<endl;
    }
    else{
        cout<<str<<endl;
    }

}

int main()
{
    int t;
    cin>>t;
    while(t!=0)
    {
    string str;
    cin>>str;
    words(str);
    t--;
    }

    return 0;
}