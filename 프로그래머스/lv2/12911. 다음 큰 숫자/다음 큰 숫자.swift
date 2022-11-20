import Foundation

func solution(_ n: Int) -> Int {
    // 1의 갯수가 같은 2진 자연수
    // 78 -> 1001110 -> 1010011 -> 83
    // 78 -> 79 80 81 82 83

    // 15 -> 1111 -> 10111 -> 23

    var start = n + 1
    var startNumRadix = String(n, radix: 2).map { $0 == "1" }.filter { $0 }.count

    while true {
        var endNumRadix = String(start, radix: 2).map { $0 == "1" }.filter { $0 }.count
        if startNumRadix == endNumRadix {
            break
        }
        start += 1
    }

    return start
}