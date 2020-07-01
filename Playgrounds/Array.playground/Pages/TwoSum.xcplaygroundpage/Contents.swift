//: [Previous](@previous)

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    guard !nums.isEmpty else { return nums}
    var dict = [Int: Int]()
    for (index, value) in nums.enumerated() {
        let diff = target - value
        if let targetIndex = dict[diff]{
            return [targetIndex, index]
        }
        dict[value] = index
    }
    return []
}
