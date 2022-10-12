#include <bits/stdc++.h>
#define ll long long
 
using namespace std;
 
 
void solve()
{
    ll n,ans=0;
    cin>>n;
    vector<ll> a(n),b(n);
    
    map<ll,ll> freqa, freqb;
    for(ll i=0;i<n;i++)
    {
        cin>> a[i];
        freqa[a[i]]++;
    }
    for(ll i=0;i<n;i++)
    {
        cin>> b[i];
        freqb[b[i]]++;
    }
    for(auto x: freqa){
        ll num = x.first;
        ll minm = min(freqa[num],freqb[num]);
        
        freqa[num] -= minm;
        freqb[num] -= minm;
    }
    for(auto x: freqa){
        ll num = x.first;
        if(num>9){
            ll new_num = log10(num) +1;
            ans += freqa[num];
            freqa[new_num] += freqa[num];
            freqa[num]=0;
        }
    }
    for(auto x: freqb){
        ll num = x.first;
        if(num>9){
            ll new_num = log10(num) +1;
            ans += freqb[num];
            freqb[new_num] += freqb[num];
            freqb[num]=0;
        }
    }
    for(auto x: freqa){
        ll num = x.first;
        ll minm = min(freqa[num],freqb[num]);
        
        freqa[num] -= minm;
        freqb[num] -= minm;
    }
    
    for(auto x: freqa){
        if(x.first != 1){
            ans += x.second;
        }
    }
    for(auto x: freqb){
        if(x.first != 1){
            ans += x.second;
        }
    }
    cout<<ans<<endl;
}
 
int main() {
	// your code goes here
	ll q;
	cin>>q;
	while(q--)
	{
	    solve();
	}
	return 0;
}