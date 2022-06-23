import Foundation

func solution(_ p: [Int], _ l: Int) -> Int {
    var tupleQueue: [(Int, Int)] = []
    var priority = p.sorted(by: >)
    var answer = 0

    for (i, j) in p.enumerated() {
        tupleQueue.append((i, j))
    }

    while !tupleQueue.isEmpty {
        let queueHead = tupleQueue.removeFirst()

        if queueHead.1 == priority.first! {
            answer += 1
            if queueHead.0 == l {
                break
            }
            priority.removeFirst()
        } else {
            tupleQueue.append(queueHead)
        }
    }
    return answer
}