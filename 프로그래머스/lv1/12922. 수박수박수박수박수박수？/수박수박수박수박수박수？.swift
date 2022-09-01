func solution(_ n:Int) -> String {
    var cnt = 0
    var ans = ""
    while cnt < n {
        if cnt % 2 == 0 {
            ans += "수"    
        } else {
            ans += "박"
        }
        cnt += 1
    }
    return ans
}