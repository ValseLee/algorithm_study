func solution(_ n: Int) -> Int {
    var res = [0, 1]

    for i in 2 ... n {
        res.append((res[i - 2] + res[i - 1]) % 1_234_567)
    }

    return res.last!
}