
import Foundation

public func maxAdjacentDistanceIndices(_ A : inout [Int]) -> Int {
    var indexedArray = [(Int,Int)]()
    for (index,value) in A.enumerated() {
        indexedArray.append((index,value))
    }
    
    let sortedIndexArray = indexedArray.sorted { (t1, t2) -> Bool in
        return t1.1 < t2.1
    }
    
    var maxDistance = -1
    for i in 0..<sortedIndexArray.count - 1 {
        for j in (i + 1)...sortedIndexArray.count - 1 {
            if  (j != (sortedIndexArray.count - 1)) && sortedIndexArray[j].1 == sortedIndexArray[j + 1].1 {
                continue
            } else {
                let index1 = sortedIndexArray[i].0
                let index2 = sortedIndexArray[j].0
                let value1 = sortedIndexArray[i].1
                let value2 = sortedIndexArray[j].1
                let distance = abs(index1 - index2)
                if (distance > maxDistance && value1 != value2) {
                    maxDistance = distance
                    print(index1, index2, maxDistance)
                    break;
                }
                
                if value1 == value2 && j == sortedIndexArray.count - 1 {
                    return maxDistance
                }
            }
        }
    }
    return maxDistance
    
}

var arr = [0,3,3,7,5,3,11,1]
//var arr = [1,4,7,3,3,5]
//var arr = [1,1,1,1,1]
let v = maxAdjacentDistanceIndices(&arr)

let arr1 = [1,2]
let arr2 = [3,4]
let arr3 = arr1 + arr2
