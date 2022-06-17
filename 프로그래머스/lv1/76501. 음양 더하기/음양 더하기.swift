import Foundation

func solution(_ a: [Int], _ arr2: [Bool]) -> Int {
    var arr = a
    var sum = 0

    for i in 0 ..< arr.count {
        if arr2[i] == false {
            arr[i] = -arr[i]
        }
        sum += arr[i]
    }
    return sum
}