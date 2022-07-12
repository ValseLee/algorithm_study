func solution(_ seoul:[String]) -> String {
    var answer = seoul.firstIndex(of: "Kim")!
    return "김서방은 \(answer)에 있다"
}