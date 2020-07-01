//: [Previous](@previous)

import Foundation

func getMaxUnits(boxes: [Int], unitsPerBox: [Int], truckSize: Int) -> Int {
    // Write your code here
    let zipped = Array(zip(boxes,unitsPerBox))
    let sorted = zipped.sorted {$0.1 > $1.1}
    
    var totalUnits = 0
    var totalBoxes = 0
    for (boxCount, units) in sorted {
        if totalBoxes + boxCount <= truckSize {
            totalUnits  += boxCount * units
            totalBoxes += boxCount
        } else {
            let dif =  truckSize - totalBoxes
            totalUnits += dif * units
        }
    }
    return totalUnits
     
}

let boxes = [1,2,3]
let unitsPerBox = [3,2,1]
let truckSize = 3


let v = getMaxUnits(boxes: boxes, unitsPerBox: unitsPerBox, truckSize: truckSize)
