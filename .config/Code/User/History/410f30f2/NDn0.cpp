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
        lli n;
        cin>>n;
        lli arr[n];
        arrIn(arr,n);
        sort(arr,arr+n);
        lli c=0;
        lli p=arr[0];
        lli flag =0;
        // vector<lli> vec;
        loop(i,0,n){
            if(p==arr[i]){
                c++;
            }
            else{
                cout<<c<<" else c"<<endl;
                if(c%2==1){
                    flag=1;
                    break;
                }
                else{
                    p=arr[i];
                    c=1;
                }
            }
        }
        if(c%2==1){
            cout<<c<<" if c"<<endl;
            flag=1;
        }
        if(flag==0){
            cout<<"Zenyk"<<endl;
        }
        else{
            cout<<"Marichka"<<endl;
        }
    }
    return 0;
}