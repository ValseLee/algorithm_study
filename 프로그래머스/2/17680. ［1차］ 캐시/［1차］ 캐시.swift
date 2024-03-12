func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    if cacheSize == 0 { return cities.count * 5 }
    
    var res = 0
    var queue = Array(repeating: "", count: cacheSize)
    
    for i in 0..<cities.count {
        let target = cities[i].lowercased()
        print(queue, target)
        if let idx = queue.firstIndex(of: target) {
            queue.append(queue.remove(at: idx))
            res += 1
        } else if i < cacheSize {
            queue[i] = target
            res += 5
        } else {
            queue.removeFirst()
            queue.append(target)
            res += 5
        }
    }
    print("RES", queue)
    return res
}