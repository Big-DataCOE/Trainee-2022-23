#include<iostream>
using namespace std;


int main(){
	int n;
    cin>>n;
    string s,t;
    cin>>s>>t;
    int l=0;
    for(int i=0;i<n;i++){
    	l+=min(abs(s[i]-t[i]),10-abs(s[i]-t[i]));
	}
	cout<<l<<endl;
}