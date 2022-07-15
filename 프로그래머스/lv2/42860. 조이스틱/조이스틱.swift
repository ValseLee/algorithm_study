import Foundation

func solution(_ name: String) -> Int {
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    let alphabetReversed = Array(alphabet.reversed())
    var answer = 0

    // 위아래 움직임
    let _ = name.map {
        (min(alphabet.firstIndex(of: String($0))! - 1, alphabetReversed.firstIndex(of: String($0))!) + 1,
         String($0))
    }.forEach {
        answer += $0.0
    }

    // 좌우 움직임
    let nameArr = name.map { String($0) }
    var minimum = nameArr.count - 1

    for i in 0 ..< nameArr.count {
        var tmp = i + 1
        while tmp < nameArr.count, nameArr[tmp] == "A" {
            tmp += 1
        }

        let numberOfA = nameArr.count - tmp
        let goRight = i * 2 + numberOfA
        let goLeft = numberOfA * 2 + i

        minimum = min(minimum, goRight)
        minimum = min(minimum, goLeft)
    }
    return answer + minimum
}