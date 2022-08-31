func solution(_ s:String) -> String {

    var arr = [String]()
    var cnt = 0

    for i in s {
        let str = String(i)
        switch str {
            case " ":
            arr.append(str)
            cnt = 0
            default:
            if cnt % 2 == 0 {
                arr.append(str.uppercased())
            } else {
                arr.append(str.lowercased())
            }
            cnt += 1
        }
    }

    return arr.joined()
}