#include<bits/stdc++.h>
using namespace std;
int main(){
    int n,i,val1,val2;
    int diff1,diff2,diff,sum=0;
    cin>>n;
    string s1,s2;
    cin>>s1>>s2;
    for(i=0;i<n;i++){
        val1=(int)(max(s1[i],s2[i]));
        val2=(int)(min(s1[i],s2[i]));
        diff1=val1-val2;
        diff2=(val2-0)+(9-val1+1);
        diff=min(diff1,diff2);
        
        sum+=diff;
        
        
    }
    cout<<sum;
}