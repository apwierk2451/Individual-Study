import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let maxY = park.count
    let maxX = park[0].count
    
    var currentLocation: [Int] = [0, 0]

    for i in 0..<maxY {
        let row = Array(park[i])
        for j in 0..<maxX {
            if row[j] == "S" {
                currentLocation = [i, j]
            }
        }
    }
    
    enum Direction: String {
        case west = "W"
        case east = "E"
        case north = "N"
        case south = "S"
    }
    
    func move(value: String) {
        let splitString = value.split(separator: " ")
        guard let direction = Direction(rawValue: String(splitString[0])),
              let moveValue = Int(splitString[1]) else { return }
        
        var newX = currentLocation[1]
        var newY = currentLocation[0]
        
        switch direction {
        case .east:
            if newX + moveValue < maxX {
                for v in 1...moveValue {
                    if park[newY][park[newY].index(park[newY].startIndex, offsetBy: newX + v)] == "X" {
                        return
                    }
                }
                currentLocation[1] += moveValue
            }
        case .west:
            if newX - moveValue >= 0 {
                for v in 1...moveValue {
                    if park[newY][park[newY].index(park[newY].startIndex, offsetBy: newX - v)] == "X" {
                        return
                    }
                }
                currentLocation[1] -= moveValue
            }
        case .north:
            if newY - moveValue >= 0 {
                for v in 1...moveValue {
                    if park[newY - v][park[newY - v].index(park[newY - v].startIndex, offsetBy: newX)] == "X" {
                        return
                    }
                }
                currentLocation[0] -= moveValue
            }
        case .south:
            if newY + moveValue < maxY {
                for v in 1...moveValue {
                    if park[newY + v][park[newY + v].index(park[newY + v].startIndex, offsetBy: newX)] == "X" {
                        return
                    }
                }
                currentLocation[0] += moveValue
            }
        }
    }
    
    for route in routes {
        move(value: route)
    }
    
    return currentLocation
}


// 2시간
