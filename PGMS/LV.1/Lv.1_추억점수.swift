import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result: [Int] = []
    var missed = [String: Int]()
    
    for (person, point) in zip(name, yearning) {
        missed[person] = point
    }
    
    for people in photo {
        var sum = 0
        
        people.map { 
            sum += missed[$0] ?? 0
        }
        result.append(sum)
    }
    
    return result
}
