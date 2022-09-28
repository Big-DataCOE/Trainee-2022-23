//solution for problem 71A
//accepted solution


#include<iostream>
#include<cstring>
#include<string>>
using namespace std;
int main()
{
string str;
int n;
int x;
cin>>n;
while(n--)
{
	cin>>str;
x=str.length();
if(x>10)
{
	cout<<str[0]<<x-2<<str[x-1]<<endl;
}
else
{
	cout<<str<<endl;
}
}
	return 0;
}
