//: [Previous](@previous)

import Foundation

var input = [[7,0], [4,4], [7,1], [5,0], [6,1], [5,2]]

func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
    var sorted = people.sorted { (a, b) -> Bool in
        if (a[0] == b[0]) {
            return a[1] < b[1]
        } else {
            return a[0] > b[0]
        }
    }
    print(sorted)
    var restructed  = [[Int]]()
    for item in sorted {
        restructed.insert(item, at: item[1])
        print(restructed)
    }
    return restructed
}

let reconstructed = reconstructQueue(input)
