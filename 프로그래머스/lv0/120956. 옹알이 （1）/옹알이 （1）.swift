import Foundation

func solution(_ babbling: [String]) -> Int {
	var cnt = 0
	let pronounce = ["aya", "ye", "woo", "ma"]
	
	for text in babbling {
		var tmp = text
		
		for pros in pronounce {
			tmp = tmp.replacingOccurrences(of: pros, with: " ")
		}
		
		tmp = tmp.trimmingCharacters(in: .whitespaces)
		if tmp.count == 0 {
			cnt += 1
		}
	}

	return cnt
}