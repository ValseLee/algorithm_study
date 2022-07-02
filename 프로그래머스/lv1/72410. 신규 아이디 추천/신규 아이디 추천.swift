import Foundation

func solution(_ new_id: String) -> String {
    var answer = ""
    let id = new_id
    let accepted = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "-", ".", "_"]
    let intArr = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    let upper = accepted.map { $0.uppercased() }

    for i in id {
        if String(i) != "." {
            if upper.contains(String(i)) {
                answer += i.lowercased()
            } else if accepted.contains(String(i)) || intArr.contains(String(i)) {
                answer += String(i)
            } else if !accepted.contains(String(i)), intArr.contains(String(i)) {
                continue
            }
        } else if String(i) == "." {
            answer += "."
        }
    }

    print(answer)

    for _ in answer {
        if answer.count == 1, answer.contains(".") {
            answer += "a"
        }
        if answer.first == "." {
            answer.removeFirst()
        } else if answer.last == "." {
            answer.removeLast()
        }

        if answer.contains("..") {
            answer = answer.replacingOccurrences(of: "..", with: ".")
        }
    }

    while answer.count > 15 {
        answer.removeLast()
        if answer.last == "." {
            answer.removeLast()
        }
    }

    while answer.count < 3 {
        answer += String(answer.last!)
    }

    return answer
}