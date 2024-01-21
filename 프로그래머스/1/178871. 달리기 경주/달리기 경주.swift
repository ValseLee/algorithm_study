import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var position: [String: Int] = [:]
    for i in 0..<players.count { position[players[i]] = i }
    var players = players
    
    // callings
    // .forEach { target in
    //   let targetIndex = players.firstIndex(of: target)!
    //   players.remove(at: targetIndex)
    //   players.insert(target, at: targetIndex - 1)
    //  }
    
    for target in callings {
        var pos = position[target]! // 추월 인덱스
        position[players[pos-1]]! += 1 // 추월 당한 선수 위치 + 1
        position[target]! -= 1 // 추월한 선수 위치 -1
        
        players.swapAt(pos, pos-1)
    }
    
    return players
}