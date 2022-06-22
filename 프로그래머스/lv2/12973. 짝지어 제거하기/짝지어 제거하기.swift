import Foundation

func solution(_ s: String) -> Int {
    var arr = Array(s)
    var tmp: [Character] = []

    for i in arr.indices {
        if tmp.isEmpty {
            tmp.append(arr[i])
        } else {
            if tmp.last! == arr[i] {
                tmp.removeLast()
            } else {
                tmp.append(arr[i])
            }
        }
    }
    return tmp.isEmpty ? 1 : 0
}