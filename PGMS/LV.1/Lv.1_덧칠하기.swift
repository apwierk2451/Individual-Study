import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var min = section[0]
    var count = 0
    
    section.forEach {
        if min <= $0 {
            min = $0 + m
            count += 1
        }
    }
    
    return count
}

// 20~30분 소요
