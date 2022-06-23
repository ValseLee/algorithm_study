import Foundation

func solution(_ s: String) -> String {
    var count = 0
    var answer = ""

    for i in s {
        if i == " " {
            count = 0
            answer += String(i)
        } else if i != " ", count == 0 {
            answer += String(i.uppercased())
            count += 1
        } else if i != " ", count != 0 {
            answer += String(i.lowercased())
            count += 1
        }
    }
    return answer
}