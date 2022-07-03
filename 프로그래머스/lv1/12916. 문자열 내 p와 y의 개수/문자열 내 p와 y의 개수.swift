import Foundation

func solution(_ s: String) -> Bool {
    var pCount = 0
    var yCount = 0

    if s.contains("p") || s.contains("P") || s.contains("y") || s.contains("Y") {
        for i in s {
            if i == "p" || i == "P" {
                pCount += 1
            } else if i == "y" || i == "Y" {
                yCount += 1
            }
        }
    } else {
        return true
    }

    return pCount == yCount
        ? true
        : false
}