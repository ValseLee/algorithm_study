func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 { return cities.count * 5 }
    
    var res = 0
    var queue = Array(repeating: "", count: cacheSize)

    for i in 0..<cities.count {
        let target = cities[i].lowercased()
        
        if queue.count < cacheSize {
            if let idx = queue.firstIndex(of: target) {
                queue.remove(at: idx)
                queue.append(target)
                res += 1
            } else {
                queue.append(target)
                res += 5
            }
        } else {
            if let idx = queue.firstIndex(of: target) {
                queue.remove(at: idx)
                queue.append(target)
                res += 1
            } else {
                res += 5
                queue.removeFirst()
                queue.append(target)
            }
        }
    }
    
    return res
}