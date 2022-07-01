import Foundation
func solution(_ id: [String], _ report: [String], _ k: Int) -> [Int] {
    let reportArr = Array(Set(report))
    var idArr: [String: Int] = [:]
    var dict: [String: [String]] = [:]
    var answer: [Int] = Array(repeating: 0, count: id.count)

    for (index, value) in id.enumerated() {
        idArr[value] = index
    }

    for i in reportArr {
        let split = i.split(separator: " ")
        let reporter = String(split[0])
        let reported = String(split[1])
        if dict[reported] == nil {
            dict[reported] = [reporter]
        } else {
            dict[reported]!.append(reporter)
        }
    }

    for i in dict {
        if i.value.count >= k {
            for reporter in i.value {
                answer[idArr[reporter]!] += 1
            }
        }
    }
    return answer
}