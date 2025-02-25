import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var temp: [[Int]] = []
    var temp1: [Int] = []
    let sortedScore = score.sorted { $0 > $1 }
    
    sortedScore.enumerated().forEach { (index, value) in
        temp1.append(value)
        if (index + 1) % m == 0 {
            temp.append(temp1)
            temp1 = []
        }
    }
    
    temp.forEach {
        if $0.count == m {
            let maxValue = $0[m-1]
            result += (maxValue * m)
        }
    }
    
    return result
}


// 10분




/*
 
 func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
     let sortedScore = score.sorted(by: >) // 내림차순 정렬
     var result = 0

     for i in stride(from: m - 1, through: sortedScore.count - 1, by: m) {
         result += sortedScore[i] * m
     }

     return result
 }
 
 풀이 해석.
 
 기존에는 2번 순회되는데, 위 풀이는 시간 복잡도가 1번 순회하여 시간 복잡도에서 이득을 보게된다.
 
 풀이의 핵심은 내림차순 정렬하여, m번째의 값이 최소값임을 인지하는 것.
 */
