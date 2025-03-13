import Foundation

func solution(_ s: String) -> Bool {
    var count = 0
    
    for char in s {
        if char == "(" {
            count += 1
        } else {
            count -= 1
        }
        
        if count < 0 {
            return false
        }
    }
    
    return count == 0
}

// 15분
