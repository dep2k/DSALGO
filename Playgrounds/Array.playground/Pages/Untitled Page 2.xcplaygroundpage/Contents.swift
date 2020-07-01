//: [Previous](@previous)

import Foundation

func moveZeroes1(_ nums: inout [Int]) {
      var nextIndex = -1
      for (index,value) in nums.enumerated() {
          if value == 0 && (nextIndex == -1) {
              nextIndex = index
          }
          if nextIndex != -1 {
             nums.swapAt(index, nextIndex)
              nextIndex += 1
          }
      }
  }

func moveZeroes(_ nums: inout [Int]) {
    var nextPositiveIndex = 0
    var zeroes = 0
    for (_,value) in nums.enumerated() {
       
        if value == 0 {
            zeroes += 1
        }
        if value > 0 {
            nums[nextPositiveIndex] = value
            nextPositiveIndex += 1
        }
    }
    
    for i in stride(from: nums.count - 1, through: 0, by: -1){
        nums[i] = 0
        zeroes -= 1
        if (zeroes == 0) {
            return
        }
    }
    
}

// 0 1 0 3 12
// 1 0 0 3 12  indexOfFirstZero = 1
// 1 3 0 0 12   indexOfFirstZeor = 4
// 1 3 12 0 0

var arr = [0,1,0,3,12]
moveZeroes(&arr)
print(arr)
