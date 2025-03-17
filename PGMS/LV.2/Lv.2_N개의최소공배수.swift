func solution(_ arr: [Int]) -> Int {
    var result = arr[0]
    
    for i in 1..<arr.count {
        result = gcm(result, arr[i])
    }
    
    return result
}

func gcd(_ l: Int, _ r: Int) -> Int { // 최대 공약수
    let s = l%r
    return s == 0 ? r : gcd(r, s)
}

func gcm(_ l: Int, _ r: Int) -> Int { // 최소 공배수
    return l*r / gcd(l, r)
}

// 40분

/*
 
 최소공배수 알고리즘을 알게되었다.
 
 최소 공배수는 두 수 a, b의 최소공배수는 두 수의 곱을 두 수의 최대 공약수로 나누어 주어서 구할 수 있다.
 최대 공약수는 유클리드 호제법을 이용하여 구할 수 있다.
 
 */
