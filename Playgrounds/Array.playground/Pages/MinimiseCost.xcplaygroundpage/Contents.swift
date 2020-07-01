//: [Previous](@previous)

import Foundation

//var costs = [[10,20],[30,200],[400,50],[30,20]]

var costs = [[259,770],[448,54],[926,667],[184,139],[840,118],[577,469]]

var costDiff = costs.sorted { (v1, v2) -> Bool in
    let diff1 = abs(v1[0] - v1[1])
    let diff2 = abs(v2[0] - v2[1])
    return diff1 > diff2
}

print(costDiff)

var cityACount = 0
var cityBCount = 0

var selectedCost = [Int]()
for entry in costDiff {
    if entry[0] < entry[1] {
        if cityACount < costs.count / 2 {
            cityACount += 1
            selectedCost.append(entry[0])
        } else {
            cityBCount +=  1
            selectedCost.append(entry[1])
        }
        
    } else {
        if cityBCount < costs.count / 2 {
            cityBCount += 1
            selectedCost.append(entry[1])
        } else {
            cityACount += 1
            selectedCost.append(entry[0])
        }
    }
}

let minimumCost = selectedCost.reduce(0) { (result, value) -> Int in
    return result + value
}

//let subArray = Array(selectedCost.prefix(selectedCost.count - 2))

let subArray = selectedCost[0..<selectedCost.count - 1]


let string = "something"
string.first

