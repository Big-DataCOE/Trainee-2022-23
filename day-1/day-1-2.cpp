//problem code-282A
//accepted code-
#include<iostream>
#include<string>
using namespace std;
int main()
{
    int x=0;
    int n;
    cin>>n;
    string y[4]={"X++","++X","X--","--X"};
  while(n--)
  {
  string s;
  cin>>s;
  if(s==y[0] || s==y[1])
  {
  	x++;
  }
  else{
  	x--;
  }
  }  cout<<x;
    return 0;
}
