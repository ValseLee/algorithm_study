#include <bits/stdc++.h>
using namespace std;


string solution(vector<string> id_pw, vector<vector<string>> db) {
    string answer = "";
    
    string id = id_pw[0];
    string pw = id_pw[1];
    
    for(auto& it : db) { // 2차원 배열 속 1차원 배열 요소 돌리기
        // cout << it[0] << '\n'; // id
        // cout << it[1] << '\n'; // pw
        
        if (id == it[0] && pw == it[1]) { // id와 비밀번호가 같을 경우,
            return "login";
        } else if (id == it[0] && pw != it[1]) {
            return "wrong pw";
        } else {
            answer = "fail";
        }
    }
    return answer;
}