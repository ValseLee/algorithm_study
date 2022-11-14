import Foundation

func solution(_ babbling: [String]) -> Int {
	var cnt = 0
	let pronounce = ["aya", "ye", "woo", "ma"]
	let nono = ["ayaaya", "yeye", "woowoo", "mama"]
	
	for i in 0..<babbling.count {
		var tmp = babbling[i]
		
		for j in 0..<pronounce.count {
			if babbling[i].contains(nono[j]) {
				continue
			}
			if babbling[i].contains(pronounce[j]) {
				tmp = tmp.replacingOccurrences(of: pronounce[j], with: " ")
			}
		}
		
		tmp = tmp.trimmingCharacters(in: .whitespaces)
		if tmp.isEmpty {
			cnt += 1
		}
	}
	return cnt
}