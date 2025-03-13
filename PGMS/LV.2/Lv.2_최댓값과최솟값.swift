import Foundation

func solution(_ s:String) -> String {
    let data = s.split(separator: " ").map { Int($0) ?? 0 }
    
    let result = "\(data.min() ?? 0) \(data.max() ?? 0)"
    return result
}

// 2분
