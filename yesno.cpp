#include<iostream>
using namespace std;
int main()
{
	int n;
	cin >> n;
	while(n--){
		string s;
		cin >> s;
		if(s == "YES" || s == "YEs" || s == "Yes" || s == "yes" || s == "yES" || s == "yEs" || s == "yeS" || s == "YeS")	cout << "YES" << endl;
		else cout << "NO" << endl;
	}
	return 0;
}