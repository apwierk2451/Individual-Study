import Foundation

func solution(_ s:String) -> Int {
    var temp = Array(s)
    var isChange = false
    var mainIndex = 0
    
    var sameCount = 0
    var noSameCount = 0
    
    var result = 0
    
    for i in 0..<s.count {
        if isChange {
            mainIndex = i
            isChange = false
        }
        
        if temp[i] == temp[mainIndex] {
            sameCount += 1
        } else {
            noSameCount += 1
        }
        
        if sameCount == noSameCount {
            result += 1
            isChange = true
        }
    }
    
    return isChange ? result : result + 1
}


// 14분
