import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var key: [Character: Int] = [:]
    
    for keys in keymap {
        for (index, char) in keys.enumerated() {
            key[char] = min(key[char] ?? Int.max, index + 1)
        }
    }
    
    var result: [Int] = []
    
    for target in targets {
        var total = 0
        var isPossible = true
        
        for char in target {
            if let count = key[char] {
                total += count
            } else {
                isPossible = false
                break
            }
        }
        
        result.append(isPossible ? total : -1)
    }
    
    return result
}


// 20분
