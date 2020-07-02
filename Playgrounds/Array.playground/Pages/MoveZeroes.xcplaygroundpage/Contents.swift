//: [Previous](@previous)

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var indexForPositive = Int.max
    for (index, value) in nums.enumerated() {
      if (value == 0) {
       
          if index < indexForPositive {
            indexForPositive = index
          }
      }
        
      else  {
          if (indexForPositive < index) {
              nums.swapAt(indexForPositive, index)
              indexForPositive += 1
          }
      }
    }
}

var arr = [0,1,0,3,12]
moveZeroes(&arr)
print(arr)
