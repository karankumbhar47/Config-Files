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
        lli n,p;
        cin>>n>>p;
        if(n%p==0 && p>2){
            if(n==1){
                cout<<'a'<<endl;
            }
            else if(n==2){
                cout<<"impossible"<<endl;
            }
            else{
                loop(i,1,n+1){
                    if(i%p==0 || i%p==1){
                        cout<<'a';
                    }
                    else{
                        cout<<'b';
                    }
                }
                cout<<endl;
            }
        }
        else{
            cout<<"impossible"<<endl;
        }
    }
    return 0;
}