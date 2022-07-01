import Foundation

func solution(_ N: Int, _ stages: [Int]) -> [Int] {
    var people = stages.count
    var answer: [(Int, Double)] = []

    for i in 1 ... N {
        // 각 스테이지에서 멈춘 사람들
        let same = stages.filter { $0 == i }.count

        // 실패율
        answer.append((i, Double(same) / Double(people)))
        people -= same
    }

    return answer.sorted(by: { $0.1 > $1.1 }).map { $0.0 }
}