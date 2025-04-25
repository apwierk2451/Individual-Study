import Foundation

func solution(_ book_time:[[String]]) -> Int {
    let converted: [[Int]] = book_time.map { time in
        return time.map {
            let parts = $0.split(separator: ":").map { Int($0)! }
            return parts[0] * 60 + parts[1]
        }
    }.sorted { $0[0] < $1[0] }

    var heap: [Int] = []

    for time in converted {
        let start = time[0]
        let end = time[1] + 10

        if let earliest = heap.first, earliest <= start {
            heap.removeFirst()
        }

        heap.append(end)
        heap.sort()
    }

    return heap.count
}


// 90분

/*
 
 */
