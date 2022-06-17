import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    var answer: [Int] = []
    let sum = brown + yellow
    var x = 0
    var y = 0

    for i in 1 ... sum {
        if sum % i == 0 {
            x = sum / i
            y = i
            if (x - 2) * (y - 2) == yellow {
                answer.append(x)
                answer.append(y)
                break
            }
        }
    }
    return answer
}