//: [Previous](@previous)

import Foundation

var input = [[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]

func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
    let sorted = people.sorted { (a, b) -> Bool in
        if (a[0] != b[0]) {
            return b[0] - a[0] > 0
        } else {
            return a[1] - b[1] > 0
        }
    }
    return sorted
}

let reconstructed = reconstructQueue(input)
