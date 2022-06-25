import Foundation

@discardableResult
func solution(_ commandCount: Int, _ commandLines: [String]) -> [String] {
    var stack: [Int] = []

    for i in 0 ..< commandCount {
        if !commandLines[i].contains(" ") {
            if commandLines[i] == "top", stack.count > 0 {
                print(stack.last!)
            } else if commandLines[i] == "top", stack.count <= 0 {
                print(-1)
            }

            if commandLines[i] == "size" {
                print(stack.count)
            }

            if commandLines[i] == "empty", stack.count == 0 {
                print(1)
            } else if commandLines[i] == "empty", stack.count != 0 {
                print(0)
            }

            if commandLines[i] == "pop", stack.count > 0 {
                print(stack.removeLast())
            } else if commandLines[i] == "pop", stack.count == 0 {
                print(-1)
            }
        } else if commandLines[i].contains(" ") {
            var num = commandLines[i].split(separator: " ")[1]
            stack.append(Int(String(num))!)
        }
    }

    return [""]
}

solution(14, ["push 1", "push 2", "top", "size", "empty", "pop", "pop", "pop", "size", "empty", "pop", "push 3", "empty", "top"])
// ______________[1]_______[1,2]___ 2, ____2, ______0, _____2, ____1, ___-1, _____0, _____1, ______-1, _____________0, _____3
solution(7, ["pop", "top", "push 123", "top", "pop", "top", "pop"])
// ___________-1,____-1,______[123]_____123,___123,____-1,___-1
