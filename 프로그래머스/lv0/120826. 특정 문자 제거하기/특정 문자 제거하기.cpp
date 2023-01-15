#include <string>
#include <vector>
#include <iostream>

using namespace std;

string solution(string my_string, string letter) {
    string answer;
    
    for(char i: my_string) {
        if (i != *letter.c_str()) { // *char.c_str() 를 해줘야 char로 형변환이 된다.
            answer += i;
        }
    }
    
    return answer;
}