import Foundation
func solution(_ survey:[String], _ choices:[Int]) -> String {
    var dic = ["A":0, "N":0, "C":0, "F":0, "M":0, "J":0, "R":0, "T":0]

    for i in 0 ..< survey.count {
        let chr = survey[i]
        let tmp = choices[i] > 4
            ? choices[i] - 4
            : 4 - choices[i]

        if choices[i] > 4 {
            dic[String(chr.last!)]! += tmp
        } else if choices [i] < 4 {
            dic[String(chr.first!)]! += tmp
        }
    }

    let AN = dic["A"]! >= dic["N"]! ? "A" : "N"
    let CF = dic["C"]! >= dic["F"]! ? "C" : "F"
    let MJ = dic["J"]! >= dic["M"]! ? "J" : "M"
    let RT = dic["R"]! >= dic["T"]! ? "R" : "T"

    return RT + CF + MJ + AN
}