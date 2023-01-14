#include<bits/stdc++.h>
using namespace std;

int basicString() {
    string a = "love is";
    cout << a[0] << "\n";
    cout << a[0] << a[1] << a[2] << "\n";

    string b = "나는";
    cout << b[0] << "\n"; // broken : 한글은 한 글자 당 3바이트라서.
    cout << b[0] << b[1] << b[2] << "\n";

    string c = "my Name is";
    c += "Valse_"; // 문자열의 + 는 0 ~ 127까지의 아스키코드를 기반으로 수행된다.
    // 97이 a고, 65가 A인 것 정도는 외우자
    c.pop_back(); // 맨끝 지우기, O(1)

    cout << c << " : " << c.size() << "\n"; // 글자 15개, O(n)
    cout << char(* c.begin()) << '\n'; // m, O(n)
    cout << char(* (c.end() - 1)) << '\n'; // e

    c.insert(0, "test");
    cout << c << " : " << c.size() << "\n"; // test +

    c.erase(0, 4);
    cout << c << " : " << c.size() << "\n"; // - test 

    auto it = c.find("Name"); // 문자열 찾고 위치 반환

    if (it != string::npos) {
        cout << "Include" << "\n";
    }

    cout << it << '\n'; // 2
    cout << string::npos << '\n'; // 18446744073709551615

    cout << c.substr(5,2) << '\n'; // my_Na"me", O(n) 위치에서 크기만큼 추출

    /*------------------------------*/

    string k = "It is Hard to have a Big Money";
    reverse(k.begin(), k.end()); // 전부 뒤집기, 기존 문자열에 적용됨
    reverse(k.begin() + 3 , k.end() - 3); // 전부 뒤집은 상태에서 일부만 뒤집기
    cout << k << "\n"; // yenis Hard to have a Big Mo tI

    return 0;
}

// IMPORTANT: SPLIT
vector<string> split(string input, string delimiter) {
    vector<string> ret;
    long long pos = 0;
    string token = "";

    // input 에서 찾고 있는 delimiter가 없을 때까지 반복
    // cpp 는 상수 선언하지 않으면 기본적으로 모두 변수라서 파라미터 아규먼트도 변경 가능
    while ((pos = input.find(delimiter)) != string::npos) { 
        token = input.substr(0, pos);
        ret.push_back(token);
        input.erase(0, pos + delimiter.length());
    }

    ret.push_back(input);
    return ret;
}

int main() {
    string a[2] = {"My Name", "is You"};
    for(string b : a) cout << b << "\n"; // My Name \n is You
    for(int i = 0; i < 2; i++) {
        cout << a[i] << "\n"; // My Name \n is You
    }

    string inputString = "My Name is Kim";
    // vector<string> 은 범위를 갖는 문자열 타입
    vector<string> result = split(inputString, " ");

    // 범위 문자열 내에서 b 를 반복해서 출력한다.
    for(string b : result) cout << b << "\n";
    return 0;
}