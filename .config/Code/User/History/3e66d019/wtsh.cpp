#include <bits/stdc++.h>
#include<iostream>
#include<vector>
#include<string>
#include<bitset>
#include<cmath>
#include<numeric>
#include<algorithm>

#define lli long long int
#define ll long long
#define loop(i,start,end) for (lli i = start; i < end; i++)
#define rloop(i, n) for (lli i = n-1; i >= 0; i--)
#define arrIn(arr,n) loop(i,0,n){cin>>arr[i];}
#define cts(k) cout<<k<<" ";
#define ctl(k) cout<<k<<endl;
#define all(vec) vec.begin(),vec.end();
#define printArr(arr,n) loop(i,0,n){cts(arr[i]);}
#define printPair(vec) loop(i,0,vec.size()){cts(vec[i].first);ctl(vec[i].second);}

using  namespace std;

int main()
{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    lli t;
    cin>>t;
    while(t--){ 
        lli n,k;
        cin>>n>>k;
        vector <pair<lli ,lli>> vec(n);
        loop(i,0,n){
            lli temp;
            cin>>temp;
            vec[i] = {temp,i};
        }
        sort(vec.begin(),vec.end());
        lli sum=0;
        loop(i,0,n){
            lli b=n-(i+1);
            lli a=0;
            if(vec[i].second-i>0){
                a = vec[i].second-i;
            }
            
            sum+=k*(((k-1)*b/2) + a);
            cout<<a<<" "<<b<<" "<< vec[i].first<<" "<<sum<<endl;
        }
        cout<<sum<<endl;
    }
    return 0;
}