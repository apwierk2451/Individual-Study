import Foundation

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    var cards1Index = 0
    var cards2Index = 0

    for word in goal {
        if cards1Index < cards1.count, cards1[cards1Index] == word {
            cards1Index += 1
            continue
        }
        if cards2Index < cards2.count, cards2[cards2Index] == word {
            cards2Index += 1
            continue
        }
        
        return "No"
    }

    return "Yes"
}

// 10분 걸림.
