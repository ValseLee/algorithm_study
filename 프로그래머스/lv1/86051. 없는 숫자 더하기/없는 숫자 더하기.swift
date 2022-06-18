import Foundation

func solution(_ arr: [Int]) -> Int {
    var sum = 0
    for i in arr {
        sum += i
    }
    return 45 - sum
}