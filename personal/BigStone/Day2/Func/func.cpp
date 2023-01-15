#include<bits/stdc++.h>
using namespace std;

/*
    기본 메소드와 함수들
    1. fill(first, last, val) : O(n) 배열을 초기화
    2. memset() : 바이트 단위 초기화, 0, -1, char 타입 초기화할 때만 사용함.
        - 절대절대 1은 넣을 수 없음
    3. memcpy() : 변수 메모리 값들을 다른 변수의 특정 메모리값으로 깊은 복사할 때 사용함.
        - a 원본 배열이 수정되는 동시에, 수정되지 않은 a 원본 배열을 써야할 때.
    4. sort(first, last, 비교함수?) : 컨테이너 요소의 정렬, O(nlogn), 기본적으로 오름차순
        - first : 정렬하고 싶은 배열의 첫 이터레이터(포함함)
        - last : 정렬하고 싶은 배열의 마지막 이터레이터(포함하지 않음)
        -> a[5] 배열 전체를 정렬하고 싶으면 a[0], a[0] + 5 라고 해야 함
        - 내림차순 정렬은 greater<int>() 를 마지막에 전달한다.
        
*/

const int max_n = 1004;
const int INF = 987654321;


int iterator() {

    vector<int> v[10]; // v 벡터 10
    vector<int> v2(10, 0); // 초기값이 0인 v2 벡터 1개
    vector<vector<int>> v3(10, vector<int>(10,0)); // 크기 10*10, 초기값 0, 2차원 벡터
    vector<vector<int>> v4; // 크기가 없는 2차원 벡터

    int dp[10] = {0,}; // 1차원 배열을 0으로 초기화, 이건 에러가 일어날 수도 있다.

    int a[max_n]; // 1004 길이의 일차원 배열
    int a2[max_n][max_n]; // 1004 * 1004 길이의 이차원 배열
    int a3[max_n];
    int a4[max_n][max_n];
// 이터레이터 활용
    fill(v2.begin(), v2.end(), INF); // 초기값 0이었던 v2 백터의 시작과 끝을 전부 INF로 초기화
    fill(a, a + max_n, 10); // 1004까지 10으로 전체 초기화
    
    // fill로 2차원 배열 초기화하려면 forloop
    for(int i = 0; i < max_n; i++) {
        fill(a2[i], a2[i] + max_n, INF);
    }

    // 이 방법을 더 많이 쓰게 될것
    fill(&a2[0][0], &a2[0][0] + max_n * max_n, INF);

    /*-----*/
    memset(a3, -1, sizeof(a));
    memset(a4, -1, sizeof(a));
    return 0;
}

bool cmp(pair<int, int>a, pair<int,int>b) {
        return a.first > b.first;
    }

// 여기서부터 sort()
int main() {
    vector<int> a;
    int b[5];

    // 배열 넣기
    for(int i = 5; i >= 1; i--) {
        b[i-1] = i;
    }

    // 벡터 넣기
    for(int i = 5; i >= 1; i--) {
        a.push_back(i);
    }

    // 오름차순
    sort(b, b+5);
    sort(a.begin(), a.end());

    for(int i : a) cout << i << ' ';
    for(int i : b) cout << i << ' ';

    // 내림차순
    sort(b, b+5, greater<int>());
    sort(a.begin(), a.end(), greater<int>());

    for(int i : a) cout << i << ' ';
    for(int i : b) cout << i << ' ';

    cout << "\n";

    // pair vector의 경우 first, second ... 순으로 오름차순 정렬이 기본
    vector<pair<int, int>> v;

    for(int i = 10; i >= 1; i--) v.push_back({i, 10-i});
    sort(v.begin(), v.end());
    for(auto it: v) cout << it.first << " " << it.second << "\n";

    // pair vector를 내림차순 하려면 커스터마이징 필요.
    // 커스텀 함수는 54번째 줄에 있음
    // CPP는 메소드 내부에서 메소드 정의가 안되는거..?    

    sort(v.begin(), v.end(), cmp);

    for(auto it: v) cout << it.first << " : " << it.second << "\n";

    return 0;
}