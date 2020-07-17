//: [Previous](@previous)

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var map = [Int: Int]()
    for num in nums {
        map[num, default: 0] += 1
    }
    let sorted = map.sorted {$0.1 > $1.1 }
    var output = [Int]()
    for i in 0..<k {
        if i >= sorted.count {
            return output
        }
        output.append(sorted[i].0)
    }
    return output
}

var a = [1,2,3,1,1,1,2,2]
let output = topKFrequent(a, 2)
