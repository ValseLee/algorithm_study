#include <string>
#include <vector>
#include <iostream>

using namespace std;

vector<int> solution(vector<int> numbers) {
    vector<int> answer;
    
    for(int i: numbers) {
        answer.push_back(i * 2);
    }

    return answer;
}