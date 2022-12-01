import Foundation

func solution(_ emergency: [Int]) -> [Int] {

    var tmp = 0
    var result = [Int]()

    for num in emergency {
        var rank = 1

        tmp = num // 3
        for num in emergency {
            if num > tmp {
                rank += 1
            }
        }
        result.append(rank)
    }

    return result
}