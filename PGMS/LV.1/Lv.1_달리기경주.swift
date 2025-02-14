import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var result: [String] = players
    var rank: [String:Int] = [:]
    
    for i in 0..<players.count {
        rank[players[i]] = i
    }
    
    for calling in callings {
        var index = rank[calling]
        var forent = result[index!-1]
        
        result.swapAt(index!, index!-1)
        
        rank[calling] = rank[calling]! - 1
        rank[forent] = rank[forent]! + 1
    }
    
    return result
}

// 두 시간 후 풀이 참고.
// lv 0부터 차근차근.
