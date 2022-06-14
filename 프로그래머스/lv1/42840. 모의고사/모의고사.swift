// 12345 5
// 21232425 8
// 3311224455 10 

import Foundation

func solution(_ answers: [Int]) -> [Int] {
    var a: (Int, [Int]) = (0, [1, 2, 3, 4, 5])
    var b: (Int, [Int]) = (0, [2, 1, 2, 3, 2, 4, 2, 5])
    var c: (Int, [Int]) = (0, [3, 3, 1, 1, 2, 2, 4, 4, 5, 5])
    var answer: [Int] = [0,0,0]
    var result: [Int] = []

    for i in 0 ..< answers.count {
        if answers[i] == a.1[i % a.1.count] {
            answer[0] += 1
        }
        if answers[i] == b.1[i % b.1.count] {
            answer[1] += 1
        }
        if answers[i] == c.1[i % c.1.count] {
            answer[2] += 1
        }
    }

    for i in 0 ..< answer.count {
        if answer[i] == answer.max()! {
            result.append(i+1)
        }
    }

    return result
}