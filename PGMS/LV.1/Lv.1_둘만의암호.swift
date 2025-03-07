import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
        .filter { !skip.contains($0) }
        .map { String($0) }
    
    var result = s.map { String($0) }
    
    for i in 0..<result.count {
        if let alphaIndex = alphabet.firstIndex(of: result[i]) {
            let newIndex = (alphaIndex + index) % alphabet.count
            result[i] = alphabet[newIndex]
        }
    }
    
    return result.joined()
}


// 30분
