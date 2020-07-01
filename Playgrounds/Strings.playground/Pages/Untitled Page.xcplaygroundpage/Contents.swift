//: [Previous](@previous)

import Foundation


func longestDupSubstring(_ S: String) -> String {
    guard S.count >= 2 else { return ""}
    var windowSize = S.count - 1
    
    while (windowSize > 0) {
        let totalPatterns = (S.count + 1) - windowSize
        for i in 0..<totalPatterns {
            let startIndex = S.index(S.startIndex , offsetBy: i)
            let endIndex = S.index(startIndex, offsetBy: windowSize - 1)
            let pattern = S[startIndex...endIndex]
            let remainingPatters = totalPatterns - (i + 1)
            for j in 0..<remainingPatters {
                let sIndex = S.index(startIndex, offsetBy: j + 1)
                let eIndex = S.index(endIndex, offsetBy: j + 1)
                let nextPattern = S[sIndex...eIndex]
                if pattern == nextPattern {
                    return String(pattern)
                }
            }
        }
        windowSize -= 1
    }

    return ""
}

private func getIndex(S: String, i: Int) -> String.Index {
   return S.index(S.startIndex , offsetBy: i)
}

longestDupSubstring("abcd")
