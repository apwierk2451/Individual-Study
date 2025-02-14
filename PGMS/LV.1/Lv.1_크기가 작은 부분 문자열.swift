import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result: Int = 0
    var strings: [String] = []
    let arrayT = Array(t).map { "\($0)" }
    for i in 0...arrayT.count-p.count {
        var sum = ""
        for j in 0..<p.count {
            sum += arrayT[i + j]
        }
        strings.append(sum)
    }
    
    result = strings.filter { (Int($0) ?? 0) <= (Int(p) ?? 0) }.count
    
    return result
}

// 20분 걸림.
