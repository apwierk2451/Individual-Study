//
//  PrivacyInfo.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2025/03/03.
//

import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    guard let todayDate = strToDate(today) else { return [] }
    var result: [Int] = []
    
    var termsDic: [String: Int] = [:]
    
    terms.forEach {
        let term = $0.split(separator: " ")
        guard let termInt = Int(term[1]) else { return }
        termsDic.updateValue(termInt, forKey: String(term[0]))
    }
    
    for i in 0..<privacies.count {
        let privacy = privacies[i].split(separator: " ")
        
        guard let term = termsDic[String(privacy[1])],
              let privacyDate = strToDate(String(privacy[0])),
              let termedDate = Calendar.current.date(byAdding: .month, value: term, to: privacyDate) else { continue }
        if todayDate >= termedDate {
            result.append(i + 1)
        }
    }
    
    return result
}

func strToDate(_ str: String) -> Date? {
    let dateFormmatter = DateFormatter()
    dateFormmatter.dateFormat = "yyyy.MM.dd"
    
    return dateFormmatter.date(from: str)
}

// 2시간.
// 필요한 함수들 검색하여 구현함.
