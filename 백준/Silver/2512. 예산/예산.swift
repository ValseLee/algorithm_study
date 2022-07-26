import Foundation

let n = Int(readLine()!)!
let lineArray: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
let availableMoney = Int(readLine()!)!

func solution(_ n: Int, _ arr: [Int], _ availableMoney: Int) -> Int {
    var down = 0
    var high = arr.max()!
    var mid = (down + high) / 2
    var answer = 0

     while down <= high {    
        let total = arr.map { a in 
            a > mid ? mid : a
        }.reduce(0) {
            a, b in a + b
        }

        if total <= availableMoney {
            down = mid + 1
            answer = mid
        } else {
            high = mid - 1
        }
        mid = (down + high) / 2
    }

    return answer
}

print(solution(n, lineArray, availableMoney))