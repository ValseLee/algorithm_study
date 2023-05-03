import Foundation

let n = Int(readLine()!)!
let lineArray = readLine()!.split(separator: " ").map { Int($0)! }
var array = [[Int]]()
var answer = -1

func solution(_ n: Int, _ array: [[Int]]) -> Int {
    for i in array {
        var sum = 0
        for j in 0 ..< n - 1 {
            sum += abs(i[j] - i[j + 1])
        }
        if answer < sum {
            answer = sum
        }
    }
    return answer
}

func permuteWirth(_ arr: [Int], _ n: Int) {
    if n == 0 {
        array.append(arr)
    } else {
        var arr = arr
        permuteWirth(arr, n - 1)

        for i in 0 ..< n {
            arr.swapAt(i, n)
            permuteWirth(arr, n - 1)
            arr.swapAt(i, n)
        }
    }
}

permuteWirth(lineArray, n - 1)
print(solution(n, array))