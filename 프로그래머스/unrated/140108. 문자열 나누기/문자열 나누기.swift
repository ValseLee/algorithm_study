import Foundation

func solution(_ str: String) -> Int {
    let myString = Array(str)

    var firstChar = myString.first! // 첫 글자.
    var sameCnt = 0
    var diffCnt = 0
    var answer = 0

    for index in 0 ..< myString.count {
        if myString[index] == firstChar { // 글자가 같다면
            // print("글자가 같을 때 동작", firstChar, myString[index])
            sameCnt += 1
        } else if myString[index] != firstChar { // 글자가 다르다면
            // print("글자가 다를 때 동작", firstChar, myString[index])
            diffCnt += 1
        }

        // print("글자 비교 동작 후 숫자 비교", sameCnt, diffCnt)

        if sameCnt == diffCnt, index != myString.count - 1 { // 만약 숫자가 같다면 -> 분리
            // print("숫자 같을 때 동작 : ", firstChar, myString[index], "ANSWER COUNT")
            answer += 1
            firstChar = myString[index + 1] // 그 다음 문자로 옮겨주기
        } else if sameCnt == diffCnt, index == myString.count - 1 { // 숫자가 같은 채로 반복이 끝날 때
            answer += 1
        } else if sameCnt != diffCnt, index == myString.count - 1 { // 숫자가 다른 채로 반복이 끝날 때
            // print("숫자 다를 때 동작 : ", firstChar, myString[index], "ANSWER COUNT")
            answer += 1
            break
        }
    }

    return answer
}