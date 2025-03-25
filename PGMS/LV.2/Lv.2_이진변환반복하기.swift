import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    var count = 0
    var zeroCount = 0

    while s != "1" {
        let length = s.count
        s = s.filter { $0 == "1" }
        zeroCount += (length - s.count)
        s = String(s.count, radix: 2)
        count += 1
    }

    return [count, zeroCount]
}

// 1시간 30분

/*
 시간초과로 틀리는 이유를 못찾음.
 
 s = String(s.count, radix: 2) // 남은 1의 개수를 2진수 문자열로 변환
 위 문자열 함수를 몰랐음.
 Int를 2진수 문자열로 변환하여 반환
 
 */
