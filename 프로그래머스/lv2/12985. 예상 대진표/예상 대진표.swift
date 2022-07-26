import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var arr = Array(1 ... n)
    var aIdx = Int(ceil(Double(a) / 2))
    var bIdx = Int(ceil(Double(b) / 2))
    var cnt = 1

    if max(a, b) % 2 == 0, max(a, b) - 1 == min(a, b) {
        return cnt
    }

    if n == 2 {
        return 1
    }

    while arr.count > 2 {
        arr = arr.filter { $0 % 2 == 0 }.map { $0 / 2 }
        cnt += 1

        if max(aIdx, bIdx) % 2 == 0, max(aIdx, bIdx) - 1 == min(aIdx, bIdx) {
            return cnt
        }

        aIdx = Int(ceil(Double(aIdx) / 2))
        bIdx = Int(ceil(Double(bIdx) / 2))
    }

    return cnt
}