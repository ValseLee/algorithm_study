#include<bits/stdc++.h>
using namespace std; // cin, cout 를 std::cin, std::cout 하지 않도록

#define PI 3.14159 // 상수 및 매크로 정의
#define loop(x, n) for(int x = 0; x < n; x++)
/*
 loop(x,n)은 반복문
*/

int t;
string a, b;
char c;

int main() { // only one main function is available
    string bufferflush;

    cin >> c;
    cin >> t;
    getline(cin, bufferflush); // getline 반복은 randomBuffer를 활용한다.

    loop(i, t) {
        getline(cin, a);
        cout << a << "\n";
    }

    cout << PI << "\n"; // 3.14159
    int sum = 0;

    loop(i, 10){
        sum += i;
    }

    cout << sum << "\n"; // 45
    cout << a << "\n"; // 
    cout << b << "\n"; //
    cout << t << " " << c << "\n"; // char
    return 0;
}