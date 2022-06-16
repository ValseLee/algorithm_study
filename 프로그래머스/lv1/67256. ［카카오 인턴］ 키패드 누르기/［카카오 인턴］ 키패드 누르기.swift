import Foundation

func solution(_ arr: [Int], _ hand: String) -> String {
    var answer = ""
    var position = (10, 12)

    for i in arr {
        var num = i == 0 ? 11 : i
        switch num {
        case 1, 4, 7:
            position.0 = num
            answer += "L"

        case 3, 6, 9:
            position.1 = num
            answer += "R"

        case 2, 5, 8, 11:
            let leftDistance = abs(position.0 - num) % 3 + abs(position.0 - num) / 3
            let rightDistance = abs(position.1 - num) % 3 + abs(position.1 - num) / 3

            if leftDistance == rightDistance, hand == "left" {
                position.0 = num
                answer += "L"
            } else if leftDistance == rightDistance, hand == "right" {
                position.1 = num
                answer += "R"
            } else if leftDistance > rightDistance {
                position.1 = num
                answer += "R"
            } else if leftDistance < rightDistance {
                position.0 = num
                answer += "L"
            }

        default:
            break
        }
    }
    return answer
}