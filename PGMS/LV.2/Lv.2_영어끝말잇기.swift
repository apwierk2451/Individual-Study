import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var wordSet = Set<String>()
    wordSet.insert(words[0])
    var lastWord = words[0].last
    var count = 1
    for i in 1..<words.count {
        if i % n == 0 {
            count += 1
        }
        wordSet.insert(words[i])
        if (i+1) != wordSet.count {
            return [(i+1)%n == 0 ? n : (i+1)%n, count]
        }
      
        let firstWord = words[i].first
        let last = words[i].last
        if lastWord == firstWord {
            lastWord = last
        } else {
           return [(i+1)%n == 0 ? n : (i+1)%n, count]
        }
    }
    
    
    return [0, 0]
}

// 20분
