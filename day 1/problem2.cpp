
#include <iostream>
#include <string.h>
using namespace std;

int main() {
	int t,x=0;
    cin>>t;
    while(t--)
    {
        string s;
        cin>>s;
        if(s == "++X" || s== "X++")
        {
            x++;
        }
        if(s == "--X" || s== "X--")
        {
            x--;
        }
    }
    cout<<x;
}

