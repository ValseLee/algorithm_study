import Foundation

func solution(_ n: Int) -> Int {
    var answer: Set<Int> = []

    for i in 2 ... n {
        answer.update(with: i)
        for j in 2 ... Int(sqrt(Double(n))) + 1 {
            if i != j, i % j == 0 {
                answer.remove(i)
                break
            }
        }
    }
    return answer.count
}