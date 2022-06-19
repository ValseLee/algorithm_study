import Foundation

func solution(_ a: [Int], _ b: [Int]) -> Int {
    var arrSize = a[0]
    var sumTime = a[1]
    var k = a[2]
    var array = b.sorted(by: >)
    var sum = 0
    var cnt = 0

    while cnt != sumTime {
        for _ in 1 ... k {
            sum += array[0]
            cnt += 1
        }
        sum += array[1]
        cnt += 1
    }
    return sum
}

solution([5, 8, 3], [2, 4, 5, 4, 6]) // 46
