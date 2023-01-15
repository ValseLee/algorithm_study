#include <bits/stdc++.h>

using namespace std;

string solution(string s) {
    string answer;
    vector<int> v;
    
    for(char i:s) v.push_back(int(i));
    sort(v.begin(), v.end(), greater<int>());
    for(auto& it: v) answer += char(it);
    
    return answer;
}