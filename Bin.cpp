#include<iostream>

using namespace std;

int main()

{

 int n;

 cin>>n;

 int x=0;

 string str;

 string str1("++X");

 string str2("X++");

 string str3("--X");

 string str4("X--");

 for(int i=0;i<n;i++)

 {

  cin>>str;

  if(str==str1||str==str2)

  x=x+1;

  else

  x=x-1;

 }

 cout<<x;
}