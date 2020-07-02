//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var map = [Int:Int]()
    var intersections = [Int]()
    for value in nums1 {
        map[value, default: 0] += 1
    }
    for value in nums2 {
        if let count = map[value], count > 0 {
            map[value]! -= 1
            intersections.append(value)
        }
    }
    return intersections
}

