import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var result: [Int] = []
    var queue: [Int] = []
    
    for i in 0..<score.count {
        queue.append(score[i])
        queue.sort() { $0 > $1 }
        
        if queue.count > k {
            queue.removeLast()
        }
        
        result.append(queue.last ?? 0)
    }
    
    return result
}

// 30분 걸림.
