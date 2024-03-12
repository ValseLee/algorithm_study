import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var dict = [String: String]()
    var res = [String: Int]()
    
    for target in records {
        let rec = Record(target)
        
        if let carInTime = dict[rec.carNum] {
            let stayMinute = makeIntoMinute(rec.timeInfo) - makeIntoMinute(carInTime)
            if let prev = res[rec.carNum] {
                res[rec.carNum] = prev + stayMinute    
            } else {
                res[rec.carNum] = stayMinute
            }
            
            dict[rec.carNum] = nil
        } else {
            dict[rec.carNum] = rec.timeInfo
        }
    }
    
    for (carNums, inTime) in dict {
        let stayMinute = makeIntoMinute("23:59") - makeIntoMinute(inTime)
        
        if let prev = res[carNums] {
            res[carNums] = prev + stayMinute
        } else {
            res[carNums] = stayMinute
        }
    }
    
    calculate(fees, &res)
    let result = res.sorted { f, s in
        Int(f.key)! < Int(s.key)!
    }

    return result.map { $0.value } 
}

func calculate(_ fees: [Int], _ res: inout [String: Int]) {
    let defaultTime = fees[0]
    let basicFee = fees[1]
    let periodTime = fees[2]
    let periodFee = fees[3]
    
    for (carNum, minute) in res {
        if minute <= defaultTime {
            res[carNum] = basicFee
            continue
        }
        let diffTime = ceil(Double(minute - defaultTime) / Double(periodTime))
        var totalFee = 0
        
        totalFee += basicFee
        totalFee += (Int(diffTime) * periodFee)
        res[carNum] = totalFee
    }
}

func makeIntoMinute(_ str: String) -> Int {
    let times = str.split(whereSeparator: { $0 == ":" } ).map { Int($0) }        
    let inHour = times[0]! * 60
    let inMinute = times[1]!
    
    return inHour + inMinute
}

struct Record {
    var timeInfo: String
    var carNum: String
    var status: String
    
    init(_ record: String) {
        let info = record.split(whereSeparator: { $0 == " " } ).map { String($0) }
        self.timeInfo = info[0]
        self.carNum = info[1]
        self.status = info[2]
    }
}