import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var answer = [Int]()
    for i in commands {
        let start = i[0] - 1
        let end = i[1] - 1
        answer.append(
            array[start ... end]
            .sorted(by: <)[i[2] - 1]
        )
    }
    return answer
}