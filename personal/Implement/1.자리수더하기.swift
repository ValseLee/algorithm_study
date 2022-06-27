import Foundation

@discardableResult
func solution(_ a: Int, _ b: [Int]) -> Int {
    var arr = b
    var answer: [Int] = []

    for i in 0 ..< a {
        var sum = 0
        while true {
            sum += arr[i] % 10
            arr[i] = arr[i] / 10
            if (arr[i] / 10) <= 0 {
                sum += arr[i] % 10
                break
            }
        }
        answer.append(sum)
    }

    return b[answer.firstIndex(of: answer.max()!) ?? 0]
}

solution(3, [125, 15232, 97]) // 97
