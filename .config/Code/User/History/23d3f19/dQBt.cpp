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
        lli n,m;
        cin>>n>>m;
        string s1,s2;
        cin>>s1;
        cin>>s2;
        unordered_map  <char,lli> mp,mp1;
        if(m>n){
            loop(i,0,n){
                mp[s1[i]]++;
            }
            loop(i,0,m){
                if(mp[s2[i]]>0){
                    mp[s2[i]]--;
                    if(mp[s2[i]]==0){
                        mp.erase(s2[i]);
                    }
                }
                else{
                    mp1[s2[i]]++;
                }
            }
            if(mp.empty()==true){
                for(auto i=mp.begin(); i!=mp.end(); i++){
                    if(i->second%2==1 && flag1=1){
                        flag2=1
                    }
                    else{
                        
                    }
                }
            }
        }

        
    }
    return 0;
}