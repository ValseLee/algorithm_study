func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    let answer = arr.filter { $0 % divisor == 0 }.sorted(by: <)
    return answer.count >= 1
        ? answer
        : [-1]
}