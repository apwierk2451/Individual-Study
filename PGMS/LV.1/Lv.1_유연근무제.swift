import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    var result: Int = 0
    
    for person in 0..<schedules.count {
        let goalHour = schedules[person] / 100 + (schedules[person] % 100 + 10) / 60
        let goalMinute = (schedules[person] % 100 + 10) % 60
        let goal = goalHour * 100 + goalMinute
        var isOk = true
        
        for day in 0..<timelogs[person].count {
            let today = (day + startday) % 7
            
            if today != 6 && today != 0 {
                if goal < timelogs[person][day] {
                    isOk = false
                }
            }
        }
        
        if isOk {
            result += 1
        }
    }
    
    return result
}

/*
 
 2번 틀림 (총 50분)

 1. let today = day + startday % 7 으로 계산하여 startday % 7이 먼저 계산됨.
 (day + startday) % 7 괄호 넣어주어 우선순위 줌
 2. 목표 시간에는 10분을 더해줘야되는데 0855 같이 50분이 넘어갈 경우 시간 넘기는 부분을 생각못함.
 
    let goalHour = schedules[person] / 100 + (schedules[person] % 100 + 10) / 60
    let goalMinute = (schedules[person] % 100 + 10) % 60
    let goal = goalHour * 100 + goalMinute

 위 코드와 같이 60분이 넘어갈 경우 시간을 추가해주는 코드를 추가함.
 
*/
