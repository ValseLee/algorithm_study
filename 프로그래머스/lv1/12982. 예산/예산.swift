import Foundation

func solution(_ d: [Int], _ b: Int) -> Int {
    var arr = d.sorted()
    var sum = 0
    var cnt = 0

    while arr.count != 0 {
        sum += arr.removeFirst()
        if sum > b {
            break
        }
        cnt += 1
    }
    return cnt
}