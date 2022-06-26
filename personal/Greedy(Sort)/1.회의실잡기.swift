import Foundation

@discardableResult
func solution(_: Int, _ councilTimes: [String]) -> [String] {
    let makeInt = councilTimes.map {
        (Int($0.split(separator: " ")[0])!, Int($0.split(separator: " ")[1])!)
    }
    let a = makeInt.sorted { $0.1 < $1.1 }
    var answer = 0
    var endTime = 0

    for (start, end) in a {
        if start >= endTime {
            endTime = end
            answer += 1
        }
    }

    return answer
}

solution(5, ["1 4", "2 3", "3 5", "4 6", "5 7"]) // 3
