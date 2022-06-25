import Foundation

@discardableResult
func solution(_ a: [String]) -> Int {
    var stack: [String] = []
    var sum = 0

    for i in 0 ..< a.count {
        print(stack, sum)
        if a[i] == "(" {
            stack.append(a[i])
        } else if a[i] != "(" {
            if a[i - 1] == "(" {
                stack.removeLast()
                sum += stack.count
            } else {
                stack.removeLast()
                sum += 1
            }
        }
    }

    print("final", sum)
    return 1
}

solution(["(", ")", "(", "(", "(", "(", ")", "(", ")", ")", "(", "(", ")", ")", "(", ")", ")", ")", "(", "(", ")", ")"]) // 17
solution(["(", "(", "(", "(", ")", "(", "(", ")", "(", ")", ")", ")", "(", "(", ")", ")", "(", ")", ")", ")", "(", "(", ")", "(", ")", ")"]) //
