//: [Previous](@previous)

import Foundation

func hIndexLinear(_ citations: [Int]) -> Int {
    var left = 0
    var right  = citations.count - 1
    var hIndex = -1
   
    for index in 0..<citations.count {
        if citations[index] >= citations.count - index  {
            return citations.count - index
        }
    }
  
    return 0
}

func hIndex(_ citations: [Int]) -> Int {
    let totalCount = citations.count
    if totalCount == 0 {
        return 0
    }
    if totalCount == 1 {
        if citations[0] == 0 {
            return 0
        } else {
            return 1
        }
    }
    var left = 0
    var right  = totalCount - 1
  
    while right >= left {
        var mid = left + (right - left) / 2
        if citations[mid] >= (totalCount - mid) {
            if mid - 1 >= 0 && (citations[mid - 1] >= (totalCount - (mid - 1))) {
                right = mid - 1
            } else {
                return totalCount - mid
            }
        } else {
            left = mid + 1
        }
     
    }
 
    return 0
}

let citations = [0,1,3,5,6]
//let citations = [0,1]

let h = hIndex(citations)






