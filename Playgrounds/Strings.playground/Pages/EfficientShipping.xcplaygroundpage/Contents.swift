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


/*
func playlist(songs: [Int]) -> Int {
    
    var map: [Int: Int] = [Int: Int]()
    
    var count = 0;
    for value in songs {
        let inp = 60 - i % 60;
        if(i % 60 == 0){
            count += map[60,default: 0] + map[0,default:0];
        } else if let value = map[inp] {
            count += value;
        }
        if(i != 0 && i % 60 == 0){
            let val = map[60, default: 0]
            map[60] = val+1
        } else {
            let val = map[i % 60, default: 0]
            map[i % 60] =  val + 1
        }
    }
    return count;
}
*/

func getValueAtIndex(_ str: String, _ index: Int) -> String {
    let index = str.index(str.startIndex, offsetBy: index)
    return String(str[index])
}


func longestSubsequence(x: String, y: String) -> Int {
    
   // let X = Array(x)
   // let Y = Array(y)
    let maxValue = 2000
    let m = y.count
    let n = x.count
    
    var dp = Array(repeating: Array(repeating: 0, count: maxValue), count: maxValue)
    
    for i in 0...m {
        for j in 0...n {
            dp[i][j] = 0
        }
    }
    
    for i in 1...m {
        for j in 1...n {
           // if (X[j - 1] == Y[i - 1]) {
            if getValueAtIndex(x, j - 1) == getValueAtIndex(y, i - 1){
                dp[i][j] = 1 + dp[i - 1][j - 1]
            }
            else {
                dp[i][j] = dp[i][j - 1]
            }
        }
    }
    
    var ans = 0;
    
    for i in 1...m {
        ans = max(ans, dp[i][n])
    }
    return ans;
    
}
