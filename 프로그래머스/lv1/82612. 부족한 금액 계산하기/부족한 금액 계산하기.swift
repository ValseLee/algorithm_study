import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int {
    var answer = 0
    for i in 1 ... count {
        answer += i * price
    }
    return answer - money > 0
        ? answer - money
        : 0
}