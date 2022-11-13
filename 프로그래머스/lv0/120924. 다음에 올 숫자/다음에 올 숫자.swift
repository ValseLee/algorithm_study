import Foundation

func solution(_ input: [Int]) -> Int {
    var answer = 0
    if input[1] - input[0] == input[2] - input[1] {
        answer = input[input.count - 1] + (input[1] - input[0])
    } else {
        answer = input[input.count - 1] * (input[1] / input[0])
    }

    return answer
}