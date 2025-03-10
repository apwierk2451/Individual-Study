import Foundation

func solution(_ numbers: [Int]) -> [Int] {
    var result = Array(repeating: -1, count: numbers.count)  // 결과 배열 초기화
    var stack: [Int] = []  // 스택에 들어갈 값들은 인덱스
    
    for i in 0..<numbers.count {  // 왼쪽부터 순차적으로 탐색
        while !stack.isEmpty && numbers[stack.last!] < numbers[i] {
            let lastIndex = stack.removeLast()  // 스택에서 가장 마지막 인덱스 제거
            result[lastIndex] = numbers[i]  // 그 인덱스에 해당하는 결과를 갱신
        }
        stack.append(i)  // 현재 인덱스를 스택에 추가
    }
    
    return result
}

// 2시간 30분

/*
 시간초과로 틀리는 이유를 못찾음.
 
 검색 후 거꾸로 탐색해야 O(n) 으로 가능한 것을 이해함.
 
 */
