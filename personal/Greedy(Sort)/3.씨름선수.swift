import Foundation

@discardableResult
func solution(_: Int, _ numArray: [String]) -> Int {
    var answer = 0
    let person = numArray.map {
        (Int($0.split(separator: " ")[0])!, Int($0.split(separator: " ")[1])!)
    }
    let sortedPerson = person.sorted { $0.0 > $1.0 }
    var compareWeight = 0

    for (_, weight) in sortedPerson {
        if weight > compareWeight {
            compareWeight = weight
            answer += 1
        }
    }
    return answer
}

solution(5, ["172 67", "183 65", "180 70", "170 72", "181 60"]) // 3
