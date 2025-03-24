import Foundation

func solution(_ s: String) -> String {
    let result = s
        .lowercased()
        .split(separator: " ", omittingEmptySubsequences: false)
        .map { word in
            guard let first = word.first else { return "" }
            return first.uppercased() + word.dropFirst()
        }
        .joined(separator: " ")
    return result
}

// 10분

/*
 
 */
