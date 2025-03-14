import Foundation

func solution(_ x:Int, _ y:Int, _ n:Int) -> Int {
    
    var repository = Set([x])
    var result = 0
    
    while true {
        var temporary = Set<Int>()
        
        if repository.contains(y) {
            return result
        }
        for i in repository {
            if i + n <= y {
                temporary.insert(i + n)
            }
            if i * 2 <= y {
                temporary.insert(i * 2)
            }
            if i * 3 <= y {
                temporary.insert(i * 3)
            }
        }
        
        if temporary.isEmpty {
           return -1
        } else {
            repository = temporary
            result += 1
        }
    }
    
    return result
}

// 5시간

/*
 
 시간 초과 이유를 모름
 
 
 */
