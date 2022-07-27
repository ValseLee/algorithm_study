import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var smallerCnt = 0
var biggerCnt = 0

func getSmaller(num: Int) -> Int {
    smallerCnt = 0
    for i in 1 ... n {
        smallerCnt += min(n, (num - 1) / i)
    }
    return smallerCnt
}

func getBigger(num: Int) -> Int {
    biggerCnt = 0
    for i in 1 ... n {
        biggerCnt += (n - min(n, num / i))
    }
    return biggerCnt
}

func solution(_ n: Int, _ k: Int) -> Int {
    var low = 1
    var high = n * n
    var answer = 0

    while low <= high {
        var mid = (low + high) / 2
        smallerCnt = getSmaller(num: mid)
        biggerCnt = getBigger(num: mid)

        if smallerCnt > k - 1 {
            high = mid - 1
        } else if biggerCnt > n * n - k {
            low = mid + 1
        } else {
            answer = mid
            break
        }
    }
    return answer
}

print(solution(n, k))