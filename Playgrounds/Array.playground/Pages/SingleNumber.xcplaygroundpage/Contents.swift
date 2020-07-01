//: [Previous](@previous)

import Foundation

var a = [2,2,1]

func singleNumber(_ nums: [Int]) -> Int {
      let single = nums.reduce(0) { (result, value) -> Int in
          result ^ value
      }
      return single
  }
