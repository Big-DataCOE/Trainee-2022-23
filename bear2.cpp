#include <iostream>
#include <cmath>
using namespace std;

int main(){
    int a,b;
    cin>>a>>b;
    int first=0;
    int last=63;
    int mid=first+last/2;

    while(first<=last){
        if(a*pow(3,mid)>b*pow(2,mid)){
            last=mid-1;
        }
        else if(a*pow(3,mid)<b*pow(2,mid)){
            first=mid+1;
        }
        else{
            cout<<mid;
            break;
        }

    }
    return 0;
}
