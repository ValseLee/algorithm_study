#include<bits/stdc++.h>
using namespace std;

pair<int, int> pi;
tuple<int, int, int> tl;
int a,b,c;

int main() {
    pi = {1, 2};
    tl = make_tuple(1,2,3);

    tie(a, b) = pi; // pair 각각 꺼내기
    cout << a << " : " << b << "\n"; // 1 : 2

    tie(a,b,c) = tl; // tuple도 각각 꺼내기 가능
    cout << a << " : " << b << " : " << c << "\n"; // 1 : 2 : 3

    // 정식 꺼내기 문법
    a = get<0>(tl);
    b = get<1>(tl);
    c = get<2>(tl);

    // 페어 타입을 반복하기 위해 범위로 정의
    vector<pair<int, int>> v;

    // v에 1:1 ~ 5:5 를 채워주고
    for(int i = 1; i <= 5; i++) {
        v.push_back({i, i});
    }


    int k,l;
    // it 에도 pair<int, int>를 써야 하는데 타입추론형 타입을 써서 간단히
    for(auto it : v) {
        cout << it.first << " : " << it.second << "\n";

        tie(k,l) = it;
        cout << k << " : " << l << "\n"; // 튜플 약식 꺼내기도 당연 가능
    }

    return 0;
}