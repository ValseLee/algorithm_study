import Foundation

func solution(_ progresses: [Int], _ speed: [Int]) -> [Int] {
    var days = 0
    var cnt = 0
    var date: [Int] = []
    var answer: [Int] = []
    var task = 0

    while cnt < progresses.count {
        if days * speed[cnt] + progresses[cnt] >= 100 {
            cnt += 1
            date.append(days)
            days = 0
        } else {
            days += 1
        }
    }
    cnt = 0
    var pointer = 0

    while pointer < date.count {
        if date[cnt] > date[pointer] {
            task += 1
            pointer += 1
        } else if date[cnt] == date[pointer] {
            task += 1
            pointer += 1
        } else if date[cnt] < date[pointer] {
            cnt = pointer
            answer.append(task)
            task = 0
        }

        if pointer == date.count {
            answer.append(task)
        }
    }
    return answer
}