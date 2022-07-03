import Foundation

func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    var decimalArr: [String] = []
    var str = ""

    for i in 0 ..< n {
        var tmp1 = String(arr1[i], radix: 2)
        var tmp2 = String(arr2[i], radix: 2)

        if tmp1.count < n {
            while tmp1.count < n {
                tmp1.insert("0", at: tmp1.startIndex)
            }
        }
        if tmp2.count < n {
            while tmp2.count < n {
                tmp2.insert("0", at: tmp2.startIndex)
            }
        }

        for j in 0 ..< n {
            if tmp1[tmp1.index(tmp1.startIndex, offsetBy: j)] == "1" || tmp2[tmp2.index(tmp1.startIndex, offsetBy: j)] == "1" {
                str += "#"
            } else {
                str += " "
            }
        }
        decimalArr.append(str)
        str = ""
    }

    return decimalArr
}