import Foundation

func solution(_ s: String) -> String {
    var a: [Character] = Array(s)

    return a.count % 2 == 0
        ? String(a[a.count / 2 - 1]) + String(a[a.count / 2])
        : String(a[a.count / 2])
}