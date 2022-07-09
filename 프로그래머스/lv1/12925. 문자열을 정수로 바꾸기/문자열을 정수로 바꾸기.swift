func solution(_ s: String) -> Int {
    var str = s
    if str.first! == "-" {
        str.removeFirst()
        var k = Int(str)!
        k.negate()
        return k
    } else {
        return Int(str)!
    }
    return 0
}