import Foundation

func solution(_ a: [String]) -> [String] {
    let record = a
    var answer: [String] = []
    var update: [String: String] = [:]

    for i in 0 ..< record.count {
        let arr = record[i].split(separator: " ")
        if arr.count == 3 {
            update[String(arr[1])] = String(arr[2])
        }
    }

    for i in 0 ..< record.count {
        let arr = record[i].split(separator: " ")
        if arr[0] == "Enter" {
            answer.append("\(update[String(arr[1])]!)님이 들어왔습니다.")
        } else if arr[0] == "Leave" {
            answer.append("\(update[String(arr[1])]!)님이 나갔습니다.")
        }
    }
    return answer
}