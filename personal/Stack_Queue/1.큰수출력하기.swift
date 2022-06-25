import Foundation

@discardableResult
func solution(_ a: [Int], _ b: Int) -> [Int] {
    var stack: [Int] = []
    var removeCount = b

    for i in a {
        while stack.count != 0, removeCount > 0, stack.last! < i {
            stack.removeLast()
            removeCount -= 1
        }
        stack.append(i)
    }

    while removeCount != 0 {
        stack.removeLast()
        removeCount -= 1
    }

    return stack
}

solution([5, 2, 7, 6, 8, 2, 3], 3) // [7,8,2,3]
solution([9, 9, 7, 7, 2, 5, 2, 6, 4, 1], 5) // [9,9,7,7,6]
