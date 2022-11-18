import Foundation

func solution(_ arr1: [Int], _ arr2: [Int]) -> Int {
    var ans = 0
    let leastArr = arr1.sorted(by: <)
    var mostArr = arr2.sorted(by: >)

    for i in 0 ..< leastArr.count {
        ans += leastArr[i] * mostArr.removeFirst()
    }

    return ans
}